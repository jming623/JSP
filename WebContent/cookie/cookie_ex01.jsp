<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//화면 진입시 아이디기억하기 쿠키 검사(아이디 기억하기 쿠키를 찾아서 input태그안에 id값을 미리넣어주는 코드)
	//input태그에 미리값을 넣으려면 value=""를 통해 넣는다
	Cookie[] cookie = request.getCookies();
	String lastId ="";
	if(cookie != null){
		for(Cookie c : cookie){
			if(c.getName().equals("idCheck")){
				lastId = c.getValue();	
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
	
	<h3>쿠키를 사용한 로그인 연습</h3>
	
	<form action="cookie_ex01_result.jsp">
		아이디: <input type="text" name="id" value=<%=lastId %>><br/> <!-- input태그에 값을 미리넣어놓는 키워드는 value이다. -->
		비밀번호: <input type="password" name="pw"><br/>
		<input type="submit" value="로그인">
		<input type="checkbox" name="idCheck" value="y">아이디 기억하기
	</form>
	
</body>
</html>