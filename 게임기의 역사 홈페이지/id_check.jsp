<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("UTF-8");%>
<% 
   String n_id = request.getParameter("id");
   String n_passwd= request.getParameter("passwd");
   String n_name = request.getParameter("name");    
   String n_e_mail = request.getParameter("e_mail");
   String n_phone_number = request.getParameter("phone_number");
   String n_birth_day = request.getParameter("birth_day");
   String n_hobby = request.getParameter("hobby");
   String n_address = request.getParameter("address");
   String n_sex = request.getParameter("sex");
   String n_department = request.getParameter("department");
   
   Timestamp register=new Timestamp(System.currentTimeMillis());
   
   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
  
 %>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>id check</title>
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
	String passwd = rs.getString("passwd");
	String name = rs.getString("name");
	
	if(n_id.equals(id) && n_passwd.equals(passwd)){
		out.println("로그인 성공 <br><br>");
		
		%><h2><%out.println("--- " + name + "님 환영합니다! ---");%></h2><%
		count++; %>
		<br><br><form action="메인_로그인상태.jsp">
    <input type="hidden" name="id" value= <%=id %>>
    <input type="submit" value="접속">
		<% } 
				
} %>
<% if(count == 0){
	out.println("로그인 실패"); %>
	<br><br><form action="메인.html">
    <input type="submit" value="돌아가기">
	<% } %>

	

   
</body>
</html>