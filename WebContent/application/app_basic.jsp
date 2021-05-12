<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		application객체는 session과 사용방법은 동일합니다.
		생명주기가 톰캣을 stop할때 까지 단 1개가 유지됩니다.
	*/
	
	int total = 0;

	if(application.getAttribute("total") != null){//이미 존재한다는 의미
	 	total= (int)application.getAttribute("total");
	}

	total++;
	
	application.setAttribute("total", total);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	어플리케이션 객체에 누적된 토탈값: <%=total %>
	<p>total값이 만약 세션으로 만들어졌다면 브라우저를 종료했다 다시 켜면 1로 바뀌어있을 것 입니다.</p>
	<p>어플리케이션 객체에서 생성된 total값은 톰캣을 껐다켜면 1로 바뀌어있을 것 입니다.</p>
</body>
</html>