<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("UTF-8");%>
<% 
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
	String name = rs.getString("name");  
    String e_mail = rs.getString("e_mail");
	String phone_number = rs.getString("phone_number");
	String birth_day = rs.getString("birth_day");
	String hobby = rs.getString("hobby");
    String address = rs.getString("address");
    String sex = rs.getString("sex");
	String department = rs.getString("department");
	if(n_name.equals(name) && n_phone_number.equals(phone_number) && n_birth_day.equals(birth_day) &&
			n_hobby.equals(hobby) && n_address.equals(address) && n_sex.equals(sex) && n_department.equals(department)){
		out.println("정보가 일치합니다 ! <br><br>");		
		%><h2><%out.println("--- 당신의 아이디는 " + id + " 입니다. ---");%></h2>
		<br><br><form action="메인.html">
    <input type="submit" value="홈으로">
		<%  count++; break;}
	
} 
  if(count == 0) {
		%><h2><%out.println("정보가 일치하지 않습니다 ! <br><br>");%></h2>
		<br><form action="메인.html">
    <input type="submit" value="홈으로">
		<%
	}%>				
</body>
</html>