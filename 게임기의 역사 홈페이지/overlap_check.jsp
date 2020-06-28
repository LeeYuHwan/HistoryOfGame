<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8");%>
<% 
   String n_id = request.getParameter("id");
   
   Timestamp register=new Timestamp(System.currentTimeMillis());
   
   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
  
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>중복검사</title>
<style type="text/css">
body {
	background-color: #CCC;
}
h1 {
	background-color: darkcyan;
	color: #000000;
}
body,td,th {
	font-size: 14px;
	text-align: center;
}
</style>
</head>
<body>
<h1>비디오 게임기의 History</h1>
<%
        
        Statement stmt = null;
        ResultSet rs = null;

        try { 
              Class.forName("com.mysql.jdbc.Driver");
              String jdbcurl = "jdbc:mysql://localhost:3306/videogame_db?useUnicode=true&characterEncoding=UTF-8";
              conn = DriverManager.getConnection(jdbcurl, "root", "0000");
              stmt = conn.createStatement();
              String sql = "select * from member";
              rs = stmt.executeQuery(sql);
        } 
        catch(Exception e) {
              out.println("DB 연동 오류입니다. : " + e.getMessage());
        }
        int count = 0;
while(rs.next()){
	String id = rs.getString("id");
	
	if(n_id.equals(id)){
		%><h2><%out.println("중복된 아이디 입니다! <br><br>");%></h2>		
		<br><br><form action="login.html">
    <input type="submit" value="뒤로가기">
		<%  count++; break;}
	
} 
  if(count == 0) {
		%><h2><%out.println("사용 가능한 아이디 입니다! <br><br>");%></h2>
		<br><form action="login.html">
    <input type="submit" value="뒤로가기">
		<%
	}%>

</body>
</html>