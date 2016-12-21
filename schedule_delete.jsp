<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스케줄 삭제</title>
</head>

<body>
<%
	Connection conn = null;		
	PreparedStatement pstmt = null;
	
	String url = "jdbc:mysql://localhost:3306/testdb"; 
	String dbuser = "newuser"; 
	String dbpass = "sbdbwj";
	String delnum = request.getParameter("num");

	try{
		Class.forName("com.mysql.jdbc.Driver");            
		conn=DriverManager.getConnection(url,dbuser,dbpass);
		
		String sql = "delete from schedule where num=?";        
		pstmt = conn.prepareStatement(sql); 
		pstmt.setString(1, delnum);
		pstmt.executeUpdate();
		%>
		<script language=javascript>
	   	self.window.alert("성공적으로 삭제되었습니다.");
	   	location.href="index.jsp"; 
		</script>
</body>
<%
	}catch(SQLException ex){
		out.println("에러: "+ex);		
	}finally{
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){} 
		if(conn != null) try{conn.close();}catch(SQLException sqle){}   
	}		
%>
</html>