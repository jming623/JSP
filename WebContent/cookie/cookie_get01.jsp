<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String name = "";
	
	if(cookies != null){
		for(Cookie c:cookies){
			//찾을 쿠키를 이름으로 확인(user_id)
			if(c.getName().equals("user_name")){
				name = c.getValue();
			}			
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
	user_name쿠키 값:<%=name %>
</body>
</html>