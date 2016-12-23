<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="layout.css" media="screen and (max-width:1080px)">
<title>연락처 추가</title>
</head>

<body class="main">
	<div id="wrapper">
		<div id="headwrap">
			<header id="header">
				<div class="util">
					<ul class="menu">
						<form>
							<table>
								<h2>연락처 추가 화면</h2>
							</table>
						</form>
					</ul>
				</div>
			</header>
			<div id="containerwrap" class="visual01">
				<div class="section_cont02">
					<ul>
						<li>
							<form action="address_add_ok.jsp" method="post">
								<table border="1">
									<tr>
  										<td>이름</td>
  										<td colspan="3"><input type="text" name="newname" size="15"></td>
									</tr>
									<tr>
  										<td>전화번호</td>
  										<td colspan="1"><input type="text" name="newphone1" size="5" >-</td>
  										<td colspan="1"><input type="text" name="newphone2" size="5" >-</td>
  										<td colspan="1"><input type="text" name="newphone3" size="5" ></td>
									</tr>
									<tr>
  										<td colspan="4" align="center"><input type="submit" value="추가하기"></td>
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
