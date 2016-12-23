<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃 처리</title>
</head>

<body>

	로그아웃하였습니다. <br/><br/>
	<%
	    session.invalidate(); // 세션의 무효화
		%>
	<form action = "index.jsp">
		<input type ="submit" value="처음부터">
	</form>
</body>
</html>