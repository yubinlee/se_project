<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃</title>
<script language="JavaScript">
function myconfirm(){ 
	if (confirm("정말 로그아웃 하시겠습니까?")){ 
		location.href="logout_ok.jsp"; 
	}
	else{ 
	  	location.href="index.jsp"; 
	} 
} 
</script>
</head>

<body>

<script language="JavaScript">
myconfirm();
</script>
</body>
</html>
