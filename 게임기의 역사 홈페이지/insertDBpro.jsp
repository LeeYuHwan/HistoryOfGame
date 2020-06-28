<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("UTF-8");%>

<html>
<head>
<title>회원가입</title>
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
<% 
   String id = request.getParameter("id");
   String passwd= request.getParameter("passwd");
   String name = request.getParameter("name");    
   String e_mail = request.getParameter("e_mail");
   String phone_number = request.getParameter("phone_number");
   String birth_day = request.getParameter("birth_day");
   String hobby = request.getParameter("hobby");
   String address = request.getParameter("address");
   String sex = request.getParameter("sex");
   String department = request.getParameter("department");
   
   Timestamp register=new Timestamp(System.currentTimeMillis());
   
   Connection conn=null;
   PreparedStatement pstmt=null;
   
   int count = 0;
   String str="";
   try{
 	 String jdbcUrl="jdbc:mysql://localhost:3306/videogame_db?serverTimezone = UTC&useUnicode=true&characterEncoding=UTF-8";
 	
     String dbId="root";
     String dbPass="0000";
     
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	 
 	
 	
 	 String sql= "insert into member values (?,?,?,?,?,?,?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,id);
     pstmt.setString(2,passwd);
 	 pstmt.setString(3,name);
 	 pstmt.setString(4,e_mail);
 	 pstmt.setString(5,phone_number);
 	 pstmt.setString(6,birth_day);
 	 pstmt.setString(7,hobby);
 	 pstmt.setString(8,address);
 	 pstmt.setString(9,sex);
 	 pstmt.setString(10,department);
 	 pstmt.setTimestamp(11,register);
 	 pstmt.executeUpdate();
 	 
 	 str= "회원가입을 완료하였습니다.";

 	
%>
</head>
<body>
  <%=str %>
  <br><br>
  <hr>
  <h3> 가입하신 정보는 다음과 같습니다</h3><br>
  
  <%
  
   out.println("성명 : " + name+ "<br>");
   out.println("ID : " + id + "<br>");
   out.println("비밀번호 : " + passwd + "<br>");
   out.println("e-mail : " + e_mail + "<br>");
   out.println("전화번호 : " + phone_number + "<br>");
   out.println("생일 : " + birth_day + "<br>");
   out.println("취미 : " + hobby + "<br>");
   out.println("주소 : " + address + "<br>");
   out.println("성별 : " + sex + "<br>");
   out.println("학과 : " + department + "<br>");
   out.println("등록 일자 : " + register + "<br>");
  
  }catch(Exception e){ 
 		e.printStackTrace();
 		count = 1;
 		out.println("DB연동 오류입니다. : "+e.getMessage());
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>
  <hr>
<%if(count == 0){%>   <form action="updateTestForm.jsp" method="get">
  <input type="hidden" name="id" value=<%=id %>>
    <input type="submit" value="회원정보 수정"><p>
  </form>      <%} %>
  
  <form action="id_login.html" method="get">
    <input type="submit" value="로그인"><p>
  </form><br>
  <%if(count == 1){%>
  <a href="메인.html">돌아가기</a>
  <%}%>
</body>
</html>