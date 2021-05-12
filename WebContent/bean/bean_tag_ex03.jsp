<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>forward로 넘어온 bean을 사용하기</h2>
	
	<jsp:useBean id="user" class="bean.example.User" scope="request"/>
	
	아이디: <jsp:getProperty property="id" name="user"/> <br/>
	email: <jsp:getProperty property="email" name="user"/>	
	
</body>
</html>