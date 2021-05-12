<%@page import="bean.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User user = (User)request.getAttribute("user");			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>forward로 넘어온 자바를 사용하기</h2>
	아이디: <%=user.getId() %> <br/>
	email: <%=user.getEmail() %> <br/>	
		
</body>
</html>