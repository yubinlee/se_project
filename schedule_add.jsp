<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="layout.css" media="screen and (max-width:1080px)">
<title>스케줄 추가</title>
</head>

<body class="main">
	<div id="wrapper">
		<div id="headwrap">
			<header id="header">
				<div class="util">
					<ul class="menu">
						<form>
							<table>
								<h2>스케줄 추가 화면</h2>
							</table>
						</form>
					</ul>
				</div>
			</header>
			
			<div id="containerwrap" class="visual01">
				<div class="section_cont02">
					<ul>
						<li>
							<form action="schedule_add_ok.jsp" method="post">
								<table border="1">
									<tr>
  										<td>년</td>
 										<td><input type="text" name="newyear" size="5"></td>
										<td>월</td>
										<td><input type="text" name="newmonth" size="5"></td>
										<td>일</td>
										<td><input type="text" name="newday" size="5"></td>
									</tr>
									<tr>
										<td>메모</td>
										<td colspan="6"><textarea name="newmemo"></textarea></td>
									</tr>
									<tr>
										<td colspan="6" align="center"><input type="submit" value="추가"></td>
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