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

if (formPass != formPassCheck) {%>
  <script language=javascript>
   self.window.alert("비밀번호 확인이 잘못되었습니다.");
   location.href="update_pw.jsp"; 
   </script>
<%}
else{%>
<%
	
	Connection conn = null;		
	PreparedStatement pstmt = null;
	
	String url = "서버";        
	String dbuser = "유저네임";                                       
	String dbpass = "유저비밀번호"; 
	
	try{
		Class.forName("com.mysql.jdbc.Driver");            
		conn=DriverManager.getConnection(url,dbuser,dbpass);
		
		String sql = "UPDATE account set where pw =?";        
		pstmt = conn.prepareStatement(sql); 
		pstmt.setString(1, formPass);
		pstmt.executeUpdate();
		%>회원 정보 수정 처리 완료 <br/>
		  <script language=javascript>
	   self.window.alert("성공적으로 변경되었습니다.");
	   location.href="index.jsp"; 
	   </script><%	
	}catch(SQLException ex){
		out.println("에러: "+ex);		
	}finally{
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){} 
		if(conn != null) try{conn.close();}catch(SQLException sqle){}   
	}
}
%>
</body>