<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>연락처 추가 처리</title>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	
	Connection conn = null;		
	PreparedStatement pstmt = null;
	
	String url = "jdbc:mysql://localhost:3306/testdb"; 
	String dbuser = "newuser"; 
	String dbpass = "sbdbwj";

	String formName = request.getParameter("newname");
	String formPhone1 = request.getParameter("newphone1");
	String formPhone2 = request.getParameter("newphone2");
	String formPhone3 = request.getParameter("newphone3");
	String formPhone = formPhone1+formPhone2+formPhone3;
	
	if (formName.isEmpty() || formPhone.isEmpty()) {
		%>
		<script language=javascript>
  	 	self.window.alert("값을 입력하세요.");
   		location.href="address_add.jsp"; 
		</script>
		<%
	}
	
	int ncount = 0;

	for (int i = 0; i < formPhone.length(); i++) {
		if (formPhone.charAt(i) >= '0' && formPhone.charAt(i) <= '9') {
			ncount++;
		}
	}
	
	if (ncount != formPhone.length()) {
		%>
		<script language=javascript>
		self.window.alert("숫자만을 입력해주십시오.");
		location.href="address_add.jsp";
		</script>
		<%
	}
	
	else {
		try {
			Class.forName("com.mysql.jdbc.Driver");            
			conn=DriverManager.getConnection(url,dbuser,dbpass);
			
			String sql = "INSERT INTO address(NAME, PHONE) VALUES (?, ?)";   
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, formName);
			pstmt.setString(2, formPhone);
			pstmt.executeUpdate();
			%>
	 		<script language=javascript>
 	  		self.window.alert("성공적으로 추가되었습니다.");
 	  		location.href="index.jsp"; 
  			</script>
  			<%	
		}
		catch(SQLException ex) {
			out.println("에러: "+ex);		
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){} 
			if(conn != null) try{conn.close();}catch(SQLException sqle){}   
		}
	}	
%>
</body>
</html>
