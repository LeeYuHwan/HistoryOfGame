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
<p><a href="메인_로그인상태.jsp?id=<%=id%>">홈으로</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="8비트이전.jsp?id=<%=id%>">8비트 이전 게임기</a><a href="8비트%20이전.jsp?id=<%=id%>" title="8비트 이전 게임기 정보 보기"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="8비트.jsp?id=<%=id%>">8비트 게임기</a><a href="8비트.jsp?id=<%=id%>" title="8비트 게임기 정보 보기"></a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="16비트.jsp?id=<%=id%>">16비트 게임기</a><a href="16비트.jsp?id=<%=id%>" title="16비트 게임기 정보 보기"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="64비트.jsp?id=<%=id%>">64비트 게임기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="6세대%20게임기.jsp?id=<%=id%>">6세대 게임기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="7세대%20게임기.jsp?id=<%=id%>">7세대 게임기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="오늘날%20게임기.jsp?id=<%=id%>">오늘날 게임기</a><a></a></p>


<center>
<!-- InstanceBeginEditable name="EditRegion3" -->
<p><center>
<h1>비디오게임기의 History (8비트)</h1>
<h2><% out.println(id + "님 접속중..."); %></h2>
<p>
  </head>

<body>
</p>

<table align="left"width="564" height="353" border="1">
 <caption>
 패밀리 컴퓨터(NES)
 </caption>
  <tr>
    <td width="354" rowspan="2"><img src="패밀리 컴퓨터.jpg" width="344" height="299" alt=""/></td>
    <td width="155" height="52"><p>&nbsp;</p>
      <p><strong>패밀리 컴퓨터(NES)</strong></p>      &nbsp;</td>
  </tr>
  <tr>
    <td><p>닌텐도 사의 8비트 게임기 이다. 미국에서는 NES라는 이름으로 출시하였다.</p>
      <p><a href="https://ko.wikipedia.org/wiki/%ED%8C%A8%EB%B0%80%EB%A6%AC_%EC%BB%B4%ED%93%A8%ED%84%B0" title="패밀리 컴퓨터 정보 보기" target="new">자세한 정보 보기</a></p></td>
  </tr>
</table>
<table align="center" width="450" height="348" border="1">
  <tbody>
    <tr>
      <td><img src="마계촌(8비트).jpg" width="453" height="347" alt=""/></td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<table align="left" width="569" height="259" border="1">
  <caption>세가 마스터 시스템</caption>
  <tbody>
    <tr>
      <td width="240" rowspan="2"><img src="세가 마스터 시스템.png" width="240" height="329" alt=""/></td>
      <td width="313"><strong>세가 마스터 시스템</strong></td>
    </tr>
    <tr>
      <td><p>원래는 세가 마크3의 디자인을 바꿔 마스터 시스템/파워베이스 라는 이름으로 해외에서 판매하는 제품이었지만, 1987년 9월 일본에서도 FM 사운드와 3D 글라스 단자를 내장하여 마스터 시스템으로 정식 출시하였다.</p>
        <p><a href="https://ko.wikipedia.org/wiki/%EC%84%B8%EA%B0%80_%EB%A7%88%EC%8A%A4%ED%84%B0_%EC%8B%9C%EC%8A%A4%ED%85%9C" title="세가 마스터 시스템 정보 보기" target="new">자세한 정보 보기</a></p></td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
</center>
<table align="center" width="200" border="1">
  <tbody>
    <tr>
      <td><img src="슈퍼마리오(8비트).jpg" width="511" height="366" alt=""/></td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!-- InstanceEndEditable -->
</center>

<p>&nbsp;</p>

	</body>
<!-- InstanceEnd --></html>