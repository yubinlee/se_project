<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
		<!doctype html>
<html lang="ko">
<head><title>비밀번호 수정</title></head>
<body>
<form action="update_pw_ok.jsp" method="post">
<table border="1">
<tr>
<td>비밀번호</td>
  <td><input type="password" name="userpw" size="10"></td>
<td>비밀번호 확인</td>
  <td><input type="password" name="userpwcheck" size="10"></td>
<tr>
  <td colspan="4" align="center">
  <input type="submit" value="확인">
  </td>
</tr>
</table>
</form>
</body>
</html>