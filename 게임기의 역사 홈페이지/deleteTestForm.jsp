<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    %>
<html>
<head>
<title>회원탈퇴</title>
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
  <h2>--- 회원 탈퇴 ---</h2>
    
  <form method="post" action="deleteTestPro.jsp">
         아이디: <% out.println(id); %>
         <input type="hidden" name="id" value=<%=id %>><br>
         패스워드: <input type="password" name="passwd" maxlength="16"><br>
         <input type="submit" value="입력완료">
  </form>
  <form action="메인_로그인상태.jsp" method="get">
  <input type="hidden" name="id" value= <%=id %>>
       <input type="submit" value="홈으로">
   </form>
</body>
</html>