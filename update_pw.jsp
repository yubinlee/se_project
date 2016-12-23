<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="layout.css" media="screen and (max-width:1080px)">
<title>비밀번호 수정</title>
<script language="JavaScript">
function myconfirm(){ 
	if (confirm("비밀번호를 변경하시겠습니까?")){ 
		//
	}
	else{ 
	  	location.href="index.jsp"; 
	} 
} 
</script>
</head>
<html>
<body class="main">

<script language="JavaScript">
myconfirm();
</script>
	<div id="wrapper">
		<div id="headwrap">
			<header id="header">
				<div class="util">
					<ul class="menu">
						<form>
							<table>
								<h2>비밀번호 수정</h2>
							</table>
						</form>
					</ul>
				</div>
			</header>
			
			<div id="containerwrap" class="visual01">
				<div class="section_cont02">
					<ul>
						<li>
							<form action="update_pw_ok.jsp" method="post">
								<table border="1">
									<tr>
										<td>ID</td>
										<td><input type="text" name="userid" size="20"></td>
									</tr>
									<tr>
										<td>변경 비밀번호</td>
										<td><input type="password" name="userpw" size="20"></td>
									</tr>
									<tr>
										<td>비밀번호 확인 </td>
										<td><input type="password" name="userpwcheck" size="20"></td>
									</tr>
									<tr>
										<td colspan="4" input type="text"><h6>영소문자, 숫자 혼합해서 6~12자 이내로 입력해주세요.</h6></td>
									</tr>
									<tr>
										<td colspan="4" align="center"><input type="submit" value="확인"></td>
									</tr>
								</table>
							</form>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
