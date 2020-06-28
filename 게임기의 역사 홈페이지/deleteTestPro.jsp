<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%  request.setCharacterEncoding("utf-8");%>


<html>
<head>
<title>회원 탈퇴</title>
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
  String id= request.getParameter("id");
  String passwd= request.getParameter("passwd");

  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;
  

  try{
	String jdbcUrl="jdbc:mysql://localhost:3306/videogame_db";
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
	    sql= "delete from member where id= ? ";
	    pstmt=conn.prepareStatement(sql); 
	    pstmt.setString(1,id);
	    pstmt.executeUpdate();
%>
 <h2>회원탈퇴를 완료하였습니다.</h2>
   <br><br>
   <form action="메인.html" method="get">
       <input type="submit" value="홈으로">
   </form>
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
</body>
</html>
