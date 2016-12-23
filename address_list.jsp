<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%

	String pageNum = request.getParameter("pageNum");
	if(pageNum == null) {
		pageNum = "1";
	}
	int listSize = 3;
	int currentPage = Integer.parseInt(pageNum);
	int nextPage = currentPage + 1;
	int startRow = (currentPage - 1) * listSize + 1;
	int endRow = currentPage * listSize;
	int lastRow = 0;
	int i = 0;
	int num[] = {0};
	int row = startRow;
%>

<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="layout.css" media="screen and (max-width:1080px)">
<TITLE> 연락처 관리 </TITLE>
</HEAD>
<body class="main">

<%
	String curuser = (String)session.getAttribute("curuser");
		if (curuser == null) {%>
			<script language=javascript>
			self.window.alert("접근할 수 없습니다. 로그인 후 이용해주세요.");
 	 		location.href="index.jsp"; 
			</script>
		<%}
		else {%>
		
	<div id="wrapper">
		<div id="headwrap">
			<header id="header">
				<div class="util">
					<ul class="menu">
						<form>
							<table>
								<h2>연락처 관리 화면</h2>
							</table>
						</form>
					</ul>
				</div>
			</header>
			<div id="containerwrap" class="visual01">
				<div class="section_cont02">
					<ul>
						<li>
							<h2><a href=address_add.jsp>+ 추가</a></h2><br/>
							<TABLE border="1">
								<TR><TD> 이름 </TD><TD>&nbsp;</TD><TD> 전화번호 </TD></TR>
								<%
								Connection conn = null;		
								Statement stmt  = null;
	
								String url = "jdbc:mysql://localhost:3306/testdb"; 
								String dbuser = "newuser"; 
								String dbpass = "sbdbwj";
	
								try {
									Class.forName("com.mysql.jdbc.Driver");            
									conn=DriverManager.getConnection(url,dbuser,dbpass);

									stmt = conn.createStatement();

									String strSQL = "SELECT count(*) FROM address";
									ResultSet rs = stmt.executeQuery(strSQL);
								
									if (rs.next())
										lastRow = rs.getInt(1);
									
									rs.close();
		
									if (lastRow > 0) {
										strSQL = "SELECT * FROM address";
										rs = stmt.executeQuery(strSQL);				
										for (i = 1; rs.next(); i++){
											if (i >= startRow && i <= endRow) {%>
											<TR>
												<TD><%if (rs.getString("phone").contains("010")) {
														%><img src="phoneimg.png" alt="" /><%
													}
													else {
														%><img src="homeimg.png" alt="" /><%
													}%></TD>
												<TD>&nbsp;</TD>
												<TD><%=rs.getString("name") %></TD>
												<TD>&nbsp;</TD>
												<TD><%=rs.getString("phone") %></TD>
												<TD>&nbsp;</TD>
												<TD><a href='address_delete_check.jsp?no=<%=rs.getString("no")%>'>삭제</a></TD>
											</TR><%
											row++;
											}
										}
										rs.close();
										stmt.close();
									}
									else {
										%>
										<TR><TD colspan="4"> 레코드 없음 </TD></TR>
										<%
									}
	
								}
								catch(SQLException ex) { 
									%>
									<TR><TD colspan="4"> 에러: <%=ex %> </TD></TR><%
								}
								%>
							</TABLE>
							<br/>
							<%
							if(lastRow > 0) {
							int setPage = 1;
							int lastPage = 0;
							if(lastRow % listSize == 0)
								lastPage = lastRow / listSize;
							else
								lastPage = lastRow / listSize + 1;
								
							while(setPage <= lastPage) {
								if (setPage == currentPage) {
									%>
									[<%=setPage%>]
									<%
								}
								else {
									%>
									<a href="address_list.jsp?pageNum=<%=setPage%>">[<%=setPage%>]</a>
									<%
								}
								setPage = setPage + 1;
							}
						
							if(1 < currentPage) {
								%>
								<a href="address_list.jsp?pageNum=<%=currentPage-1%>">◀</a>
								<%
							}
							if(lastPage > currentPage) {
								%>
								<a href="address_list.jsp?pageNum=<%=currentPage+1%>">▶</a>
								<%
							}
						}
		}
						%>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</BODY>
</HTML>
