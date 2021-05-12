<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 스크립트릿, 선언자, 표현식을 적절히 이용해서 작성 -->
    <%! int bangmun = 0; %>
    
    <% int ran = (int)(Math.random()*9)+1; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p> <%=bangmun %>번째 방문자 입니다. </p>
	<%
	if(bangmun % 10 == 0 && bangmun !=0 ){
		out.println("당첨되셨습니다.<br/>");
	}
	%>
	<hr/>
	<h3>랜덤구구단 <%=ran %>단</h3>
	
	이번에 나온 구구단 <%=ran %>단 입니다.<br/>
	
	<%for(int i = 1 ; i <= 9 ; i++){ %>
		<%=ran %> x <%=i %> = <%=ran*i %> <br/>	
	<%} %>
			
	<% bangmun++; %>
	
</body>
</html>

