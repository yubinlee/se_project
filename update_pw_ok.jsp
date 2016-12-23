<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>비밀번호 수정 처리</title></head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String formPass = request.getParameter("userpw");
	String formPassCheck = request.getParameter("userpwcheck");
	String formId = request.getParameter("userid");

	int ccount = 0;
	int ncount = 0;

	for (int i = 0; i < formPass.length(); i++) {
		if (formPass.charAt(i) >= 'a' && formPass.charAt(i) <= 'z') {
			ccount++;
		}
		if (formPass.charAt(i) >= '0' && formPass.charAt(i) <= '9') {
			ncount++;
		}
	}

	if (ccount == 0 || ncount == 0) {%>
		<script language=javascript>
 		self.window.alert("영문과 숫자를 혼합해주세요.");
 		location.href="update_pw.jsp"; 
 		</script>
	<%}
	
	else if (!formPass.equals(formPassCheck)) {%>
		<script language=javascript>
  		self.window.alert("잘못입력하였습니다.");
		location.href="update_pw.jsp"; 
		</script>
	<%}

	else if (6 > formPass.length() || 12 < formPass.length()) {%>
		<script language=javascript>
		self.window.alert("6~12자 이내로 입력해주세요.");
 		location.href="update_pw.jsp"; 
 		</script>
	<%}

	else {
		Connection conn = null;		
		PreparedStatement pstmt = null;
		
		String url = "jdbc:mysql://localhost:3306/testdb"; 
		String dbuser = "newuser"; 
		String dbpass = "sbdbwj";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");            
			conn=DriverManager.getConnection(url,dbuser,dbpass);
			
			String sql = "UPDATE account set pw=? where id =?";        
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, formPass);
			pstmt.setString(2, formId);
			pstmt.executeUpdate();
			%>회원 정보 수정 처리 완료 <br/>
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
	}
%>
</body>
</html>
