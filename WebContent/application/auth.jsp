<%@page import="java.util.Arrays"%>
<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//랜덤한 문자값을 받아줄 수 있는 클래스 (UUID)
	//af299dda-87aa-4291-8bba-2680876b2606 이런식의 16진수(?)값이 출력됨 
	//우리는 이중 적당한 값을 뽑아 인증문자로 사용하려 합니다.
	UUID uuid =UUID.randomUUID();
	
	String[] arr = uuid.toString().split("-");
	
	System.out.println(Arrays.toString(arr));
	
	//인증문자를 세션에 저장하고 뒤에서 정상입력인지 확인.
	session.setAttribute("auth",arr[1]);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>인증페이지</h2>
	<hr/>
	<form action="auth_ok.jsp" method="post">
	
		<h4>인증문자:<%=arr[1] %></h4>
		인증문자 입력: <input type="text" name="code" size="10"> <br/>
		<input type="submit", value="확인"> 
				
	</form>
	
</body>
</html>