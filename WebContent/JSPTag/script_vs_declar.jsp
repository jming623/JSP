<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  //declaration
	
	//선언자와 스크립트릿의 차이점
	//선언자 - 멤버변수, 메서드를 선언할 때 사용(페이지에서 한번만 실행됨)
	public int total = 0;
%>

<% //scriptlet

	//스크립트릿 - 페이지에서 실행마다 한번씩 실행되는 코드
	int each = 0;

	total++;
	each++;
	//total은 계속 올라가고 each는 계속 다시선언되니까 계속 1이되겠다.
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
		선언자:<%=total %> <br/>
		스크립트릿:<%=each %> <br/>
	</p>
	
</body>
</html>