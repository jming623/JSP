<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//forward를 통해 넘어온다면 ex01의 request로 넘어오는 값을 이곳에서 사용할 수 있을까?
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디:<%=id %> <br/>
	비밀번호:<%=pw %> <br>
	
</body>
</html>