<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] ck = request.getCookies();
	String id ="";
	if(ck != null){
		for(Cookie c : ck){
			if(c.getName().equals("user_id"))
			id =c.getValue();
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 성공 페이지</h3>
	<%=id %>님 환영합니다.
</body>
</html>