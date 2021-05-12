<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 값은 브라우저가 종료되기 전까지 or 기본 30분동안만 유효합니다.
	//어느페이지 에서든 사용할 수 있습니다. 
	//사용은 getAttribute("이름")
	
	String id =(String)session.getAttribute("user_id");
	String name =(String)session.getAttribute("user_name");
	
	//세션의 시간확인
	int time =session.getMaxInactiveInterval();
	//세션의 시간을 변경하는방법
	//1.세션의 만료시간은 Servers폴더에web.xml파일에서 session부분을 찾아서 바꿔줄 수도 있다. 기본은 1800(30분)
	//2.setInactiveInterval();
	session.setMaxInactiveInterval(3600);
	
	//특정세션삭제
	session.removeAttribute("user_name" );
	
	//모든세션 전부삭제
	session.invalidate(); //id,name,변경된 세션유효시간까지 기본으로 돌아옴
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션에 저장된ID:<%=id %><br/>
	세션에 저장된NAME:<%=name %><br/>
	<hr/>	
	유지시간:<%=time %>
</body>
</html>