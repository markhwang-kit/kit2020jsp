<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok.jsp</title>
</head>
<body>
ok2.jsp 에서 확인 버튼 누르면 이 페이지가 나옴
<%
	String ck = request.getParameter("c");
%>
<br>
ok2에서 넘어온 값: <%=ck %> <br>
<% if (ck.equals("1")) { %>
	<script>
	alert("있다");
	location.href="index.jsp";
	</script>
<% } else { %>
	<script>
	alert("없다");
	location.href="form.jsp";
	</script>
<% } %>





</body>
</html>