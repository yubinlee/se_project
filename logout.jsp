<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃</title>
</head>
<body>
로그아웃하였습니다. <br/><br/>
<form action = "index.jsp">
<input type ="submit" value="처음부터">
</form>
</body>
</html>
