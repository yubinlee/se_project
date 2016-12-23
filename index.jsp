<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="layout.css" media="screen and (max-width:1080px)">
<title>초기 화면</title>
</head>

<body class="main">
	<div id="wrapper">
	<div id="headwrap">
		<header id="header">
			<div class="util">
				<ul class="menu">
					<%
					String curuser = (String)session.getAttribute("curuser");
					if (curuser == null) {%>
						<form action="login.jsp" method="post">
							<table>
								<tr><td>ID:</td><td><input type ="text" name="userid"></td></tr>
								<tr><td>Password:</td><td><input type ="password" name="userpw"></td></tr>
								<tr><td><input type ="submit" value="로그인"></td></tr>
							</table>
						</form>
					<%}
					else { %>
						<form>
							<table>
								<h4><%=curuser %></h4><br/>
								<h2><a href="logout.jsp">로그아웃</a></h2><br/>
								<h2><a href="update_id.jsp">아이디 변경</a></h2><br/>
								<h2><a href="update_pw.jsp">비밀번호 변경</a></h2><br/>
							</table>
						</form>
					<%} %>
				</ul>
			</div>
		</header>
	</div>
	<div id="containerwrap" class="visual01">
		<div class="section_cont02">
			<ul>
				<li>
					<dl>
						<dt><a href="address_list.jsp">연락처</a></dt>
						<dd><a href="address_list.jsp"><img src="phonebookimg.png" alt="" /></a></dd>
						<dt><a href="schedule_list.jsp">스케줄</a></dt>
						<dd><a href="schedule_list.jsp"><img src="calendarimg.png" alt="" /></a></dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>
