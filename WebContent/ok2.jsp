<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok.jsp</title>
</head>
<body>
form.jsp 에서 확인 버튼 누르면 이 페이지가 나옴
<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
%>
<br>
당신이 입력한 번호: <%=num %> <br>
당신이 입력한 이름: <%=name %> <br>

<%

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost/dbdb", "root", "1234");
	System.out.println("연결 성공");
	
	String sql = "SELECT * FROM bunho WHERE num = ? AND name = ?";
	pstmt = conn.prepareStatement(sql);
	// 4. 데이터 binding
	pstmt.setString(1, num);
	pstmt.setString(2, name);
	
	rs = pstmt.executeQuery();
	if (rs.next()) {
		out.println("데이터 있다");
		response.sendRedirect("check.jsp?c=1");
	} else {
		out.println("데이터 없다");
		response.sendRedirect("check.jsp?c=2");
	}

} catch (Exception e) {
	System.out.println("에러: " + e);
} finally {
	try {
		if (conn != null && !conn.isClosed()) {
			conn.close();
		}
		if( pstmt != null && !pstmt.isClosed()){
            pstmt.close();
        }
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

%>

</body>
</html>