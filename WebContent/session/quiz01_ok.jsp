<%@ page import="session.example.User"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User user = (User)session.getAttribute("User");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=user.getId() %>( <%=user.getName() %>)님 환영합니다! <br/>
	region: <%=user.getRegion() %> <br/>
</body>
</html>