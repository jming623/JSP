<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스트립트릿(가장많이 쓰여요~)</h3>
	<%
		int a = 1;
		if(a >= 10){
			System.out.println("10보다 큽니다.");//얘는 콘솔창으로 출력되는 구문입니다.
			//만약 화면으로 결과를 찍어주고싶다면 어떻게 해야할까요?			
			out.println("10보다 큽니다."); //System부분을 지워주면 됩니다.
			
		}else{
			System.out.println("10보다 작습니다.");
			out.println("10보다 작습니다.");
		}	
	%>
	<hr/>
	<% //스크립트릿은 이어서 작성되는 특성이있습니다.
		for(int i = 1; i <=10; i++){
			out.println(i +"<br/>"); //println으로 작성되어도 화면에는 줄바꿈이 되지않은 상태로 출력된다. 
			//"<br/>"은 브라우저에서 태그로 인식
		}
	%>
	<hr/>
	<%	//출력문안에 태그를 넣어주는 방법	
		int num = (int)(Math.random()*20)+1;
		if(num >= 10){
			out.println("<p>참입니다~~</p>");
		}else{
			out.println("<p>거짓입니다.~~</p>");
		}	
	%>
	<hr/>
	<% //가독성이 좋은 표현방법. (위에 형식은 html문이 길어지면 out.println()구문으로 표현하기에는 힘듬 ) %>
	
	<% if(num >= 10){ %>
		<p>참입니다.</p>
	<% 	}else{ %>
		<p>거짓입니다.</p>
	<%	} %>
	<hr/>
	1.구구단 3단을 out.println과 br태그를 이용해서 브라우저 화면에 출력 <br/>
	<%		
		for(int i = 1; i <= 9 ; i++ ){
			out.println("3*" + i + "=" + 3*i + "<br/>");
		}	
	%>
	<hr/>		
	2.체크박스 10개를 브라우저에 생성<br/>
	<%
	for(int i = 1; i <= 10 ; i++){
		out.println(i+"<input type='checkbox' name='checkbox'>");
	}
	
	%>
	
	<hr/>
	<%for(int i = 1; i<=10; i++){%>
		<%=i %><input type="checkbox" name="checkbox">
	<%}%>
	
	
		
	
</body>
</html>