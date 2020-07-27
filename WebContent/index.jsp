<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
hello world!!<br>
<%=new java.util.Date() %>
<%
System.out.println("hello world");
out.println("<br>hello world<br>");
String name = "안녕";
out.println(name);	
%>
<br>
이름: <%=name %>
<br>
<a href="form.jsp">번호 이름 쓰기 폼</a>
<br>
<a href="login.jsp">로그인 체크</a>
</body>
</html>