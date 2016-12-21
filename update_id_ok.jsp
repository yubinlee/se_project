<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>아이디 수정 처리</title></head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	Connection conn = null;		
	PreparedStatement pstmt = null;
	
	String url = "jdbc:mysql://localhost:3306/testdb"; 
	String dbuser = "newuser"; 
	String dbpass = "sbdbwj";
	
	String formId = request.getParameter("userid");
	String formId2 = request.getParameter("userid2");
	try{
		Class.forName("com.mysql.jdbc.Driver");            
		conn=DriverManager.getConnection(url,dbuser,dbpass);
		
		String sql = "UPDATE account set id=? where id =?";        
		pstmt = conn.prepareStatement(sql); 
		pstmt.setString(1, formId);
		pstmt.setString(2, formId2);
		pstmt.executeUpdate();
		%>
		회원 정보 수정 처리 완료 <br/><%
		session.setAttribute("curuser", formId);%>
		<script language=javascript>
	  	self.window.alert("성공적으로 변경되었습니다.");
	  	location.href="index.jsp"; 
	   	</script><%	
	}
	catch(SQLException ex) {
		out.println("에러: "+ex);		
	}
	finally {
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){} 
		if(conn != null) try{conn.close();}catch(SQLException sqle){}   
	}		
%>
</body>
</html>
