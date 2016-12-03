<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>초기 화면</title>

</head>
<body>
<%if (session.getAttribute(“curuser”) == null) {%>
<h1>로그인</h1>
<form action="login.jsp" method="post">
<table>

<tr><td>ID:</td><td><input type ="text" name="userid"></td>
</tr>

<tr><td>Password:</td><td><input type ="password" name="userpw"></td></tr>
<tr><td><input type ="submit" value=“로그인"></td>
<%}else{ %>
<h2><a href=“logout.jsp”>로그아웃</a></h2><br/>
<h2><a href=“update_id.jsp”>아이디 변경</a></h2><br/>
<h2><a href=“update_pw.jsp”>비밀번호 변경</a></h2><br/>
<%} %>
</table>
</form>
</body>
</html>

