<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>스케줄 추가 처리</title>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	
	Connection conn = null;		
	PreparedStatement pstmt = null;
	
	String url = "jdbc:mysql://localhost:3306/testdb"; 
	String dbuser = "newuser"; 
	String dbpass = "sbdbwj";

	String formYear = request.getParameter("newyear");
	String formMonth = request.getParameter("newmonth");
	String formDay = request.getParameter("newday");
	String formMemo = request.getParameter("newmemo");
	
	if (formYear.isEmpty() || formMonth.isEmpty() || formDay.isEmpty() || formMemo.isEmpty()) {
		%>
		<script language=javascript>
	   self.window.alert("다시 입력하여 주십시오.");
	   location.href="schedule_add.jsp"; 
	   </script>
		<%
	}
	
	if (Integer.parseInt(formMonth) == 2 && Integer.parseInt(formDay) > 28 && !((Integer.parseInt(formYear) % 4 == 0 && Integer.parseInt(formYear) % 100 != 0) || Integer.parseInt(formYear) % 400 == 0)) {
		%>
		<script language=javascript>
	   self.window.alert("다시 입력하여 주십시오.");
	   location.href="schedule_add.jsp"; 
	   </script>
		<%
	}
	else if (Integer.parseInt(formMonth) == 4 || Integer.parseInt(formMonth) == 6 || Integer.parseInt(formMonth) == 9 || Integer.parseInt(formMonth) == 11) {
		if (Integer.parseInt(formDay) > 30) {
		%>
		<script language=javascript>
	   self.window.alert("다시 입력하여 주십시오.");
	   location.href="schedule_add.jsp"; 
	   </script>
		<%}
	}
	else if (Integer.parseInt(formDay) > 31) {
		%>
		<script language=javascript>
	   self.window.alert("다시 입력하여 주십시오.");
	   location.href="schedule_add.jsp"; 
	   </script>
		<%
	}
	else {
		try {
			Class.forName("com.mysql.jdbc.Driver");            
			conn=DriverManager.getConnection(url,dbuser,dbpass);
		
			String sql = "INSERT INTO schedule(YEAR, MONTH, DAY, MEMO) VALUES (?,?,?,?)";   
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, formYear);
			pstmt.setString(2, formMonth);
			pstmt.setString(3, formDay);
			pstmt.setString(4, formMemo);
			pstmt.executeUpdate();
			%>
		 	<script language=javascript>
	 		self.window.alert("정상적으로 추가되었습니다.");
	  		location.href="index.jsp"; 
	   		</script>
	   	<%	
		}
		catch (SQLException ex) {
			out.println("에러: "+ex);		
		}
		finally {
			if (pstmt != null) try {pstmt.close();} catch(SQLException sqle){} 
			if (conn != null) try {conn.close();} catch(SQLException sqle){}   
		}
	}	
%>
</body>
</html>
