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
</body>
</html>