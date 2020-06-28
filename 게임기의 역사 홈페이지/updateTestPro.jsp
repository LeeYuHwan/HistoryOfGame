<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%  request.setCharacterEncoding("utf-8"); %>
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
     
   %>
<html>
<head>
<title>회원정보 수정</title>
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
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  
  try{
	String jdbcUrl="jdbc:mysql://localhost:3306/videogame_db?useUnicode=true&characterEncoding=UTF-8";
    String dbId="root";
    String dbPass="0000";
	 
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	String sql= "select id, passwd from member where id= ?";
	pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
	rs=pstmt.executeQuery();
    
	if(rs.next()){ 
		String rId=rs.getString("id");
		String rPasswd=rs.getString("passwd");
      if(id.equals(rId) && passwd.equals(rPasswd)){
	     sql= "update member set name= ?, e_mail=?, phone_number=?, birth_day=?, hobby=?, address=?, sex=?, department=? where id= ? ";
	    		 
	     pstmt=conn.prepareStatement(sql);
	     pstmt.setString(1,name);
	     pstmt.setString(2,e_mail);
	 	 pstmt.setString(3,phone_number);
	 	 pstmt.setString(4,birth_day);
	 	 pstmt.setString(5,hobby);
	 	 pstmt.setString(6,address);
	 	 pstmt.setString(7,sex);
	 	 pstmt.setString(8,department);
	 	 pstmt.setString(9,id);
	     
	     pstmt.executeUpdate();
	     %>



	     <h2>--- 회원 정보를 수정했습니다. ---</h2><br><br>
         <hr>
         <h3> 수정한 내용은 다음과 같습니다</h3><br><%
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
        %>
	  <%
      }else
		%> <h2>--- 비밀번호가 틀렸습니다. ---</h2> <%
	}else
		%> <h2>--- 아이디가 틀렸습니다. ---</h2> <%
  }catch(Exception e){ 
	  e.printStackTrace();
  }finally{
	  if(rs != null) 
		 try{rs.close();}catch(SQLException sqle){}
	  if(pstmt != null) 
		 try{pstmt.close();}catch(SQLException sqle){}
	  if(conn != null) 
		 try{conn.close();}catch(SQLException sqle){}
  }
%>  
	     
 <hr> 
  <form action="메인_로그인상태.jsp" method="get">
  <input type="hidden" name="id" value= <%=id %>>
	  <input type="submit" value="홈으로">
  </form>
</body>
</html>
