<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>로그인 처리</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String url = "서버주소"; 
String dbuser = "유저네임"; 
String dbpass = "비번";
String id = request.getParameter("userid");
String pw = request.getParameter("userpw");
try{
	Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection(url,dbuser,dbpass);
    String sql = "select * from account where id =?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    rs = pstmt.executeQuery();
    String fid = null; String fpw= null;
    if(rs.next()){
    	fid = rs.getString("id");
        fpw = rs.getString("pw"); }
	if (id.equals(fid) && pw.equals(fpw)) {
            session.setAttribute("curuser", id) ;
	%>
	<jsp:forward page="index.jsp" />
	<%
	}
else {%>
<script language=javascript> self.window.alert("일치하는 회원정보가 없습니다."); 
location.href="index.jsp";
</script><%
 }
     }catch(SQLException ex){
			out.println("에러: "+ex); 
	 }finally{
		 if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		 if(conn != null) try{conn.close();}catch(SQLException sqle){}

	}
%>
</body>
</html>
