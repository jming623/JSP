<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//두번째페이지에서 setAttribute를 통해 저장된 값을 이곳에서 getAttribute메서드를 통해 받아줄 수 있다.
	String name = (String)request.getAttribute("name");
	
	//첫번째 페이지에서 넘어오는 id값을 getParameter로 받을수 있지만
	//보통은 첫번째페이지에서 받은 값은 두번째 페이지에서 db와연결하여 값을 처리하는데 사용하고 두번째 페이지에서 처리후 나온 값을 세번째 페이지로 보내주는 식으로 처리한다.

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward_ex04페이지</h2>
	<hr/>
	forward로 넘어온값:<%=name %> <br/>
	
</body>
</html>