<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
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
<h2>--- 회원정보 수정 ---</h2><br><br>
  <form method="post" action="updateTestPro.jsp">
         아이디: <% out.println(id); %>
         <input type="hidden" name="id" value= <%=id %>><br>
         패스워드: <input type="password" name="passwd" maxlength="30"><br>
         변경할 이름: <input type="text" name="name"><br>
    변경할 e-mail: <input type="text" name="e_mail"><br>
       변경할 전화번호: <input type="text" name="phone_number"><br>
        변경할 생일: <input type="text" name="birth_day"><br>
        변경할 취미: <input type="text" name="hobby"><br>
        변경할 주소: <input type="text" name="address"><br>
        <table> 변경할 성별: 남<input type="radio" name="sex" value="man">
        여<input type="radio" name="sex" value="woman">
        <br></table>
        변경할 학과: <input type="text" name="department"><br><br>
     
            <input type="submit" value="입력완료">             
<br><br>
  </form>
  <form action="메인_로그인상태.jsp" method="get">
  <input type="hidden" name="id" value= <%=id %>>
       <input type="submit" value="홈으로">
   </form>
</body>
</html>