<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/20150819이유환(메인).dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>비디오 게임기의 History</title>
<!-- InstanceEndEditable -->
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



<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>
<center><h1>비디오 게임기의 History</h1>
  <p>&nbsp;</p>
</center>

<p><a href="메인_로그인상태.jsp?id=<%=id%>">홈으로</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="8비트이전.jsp?id=<%=id%>">8비트 이전 게임기</a>
<a href="8비트%20이전.jsp?id=<%=id%>" title="8비트 이전 게임기 정보 보기"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="8비트.jsp?id=<%=id%>">8비트 게임기</a>
<a href="8비트.jsp?id=<%=id%>" title="8비트 게임기 정보 보기"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="16비트.jsp?id=<%=id%>">16비트 게임기</a>
<a href="16비트.jsp?id=<%=id%>" title="16비트 게임기 정보 보기"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="64비트.jsp?id=<%=id%>">64비트 게임기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="6세대%20게임기.jsp?id=<%=id%>">6세대 게임기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="7세대%20게임기.jsp?id=<%=id%>">7세대 게임기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="오늘날%20게임기.jsp?id=<%=id%>">오늘날 게임기</a><a></a></p><br><br>
<center>
<h2><% out.println(id + "님 접속중..."); %></h2>
<table>
<td><form action="메인.html">
    <input type="submit" value="로그아웃"></form></td>
    <td><form action="updateTestForm.jsp" method="get">
    <input type="hidden" name="id" value= <%=id %>>
    <input type="submit" value="회원정보 수정"></form></td>
    <td><form action="deleteTestForm.jsp" method="get">
    <input type="hidden" name="id" value= <%=id %>>
    <input type="submit" value="회원탈퇴"></form></td>
</table></center>
<center>
<!-- InstanceBeginEditable name="EditRegion3" -->

<p>&nbsp;</p>
<p>&nbsp;</p>
<p><img src="배경사진(게임패드).jpg" width="757" height="454" alt=""/></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!-- InstanceEndEditable -->
</center>

<p>&nbsp;</p>

	</body>
<!-- InstanceEnd --></html>