<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- sendRedirect를 통해 ex01에서 받은 값을 ex03으로 넘겨주는것이 가능할지 알아보자.-->
	
	<form action="send_ex02.jsp" method="post">
		아이디:<input type="text" name="id"> <br/>
		비밀번호:<input type="password" name="pw"> <br/>
		<input type="submit" value="확인">
	</form>

</body>
</html>