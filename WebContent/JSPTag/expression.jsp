<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //변수선언은 Document위쪽에 선언해주는 것이 보기 깔끔함 (어짜피 스크립트릿은 연결되있어서 어디에서 선언되도 이어진다.)
	String name = "홍길동";
	int age = 20;
	String email = "hong@google.com";
	String addr = "서울시 XX구 XX동";	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% //내생각 자바코드가 많으면 스크립트릿으로 쓰고 HTML문이 많으면 익스프레션으로 쓰는게 좋을듯 %>
	<%
		out.println("이름:"+name+"<br/>");  //이렇게 자바코드로 호출문을 표현할때 HTML표현식이 복잡해지면 자바코드도 복잡해진다.
		out.println("이름:"+age+"<br/>");
	%>
<hr/>
	이름:<%=name %><br/>	
	나이:<%=age %><br/>
	메일:<%=email %><br/>
	주소:<%=addr %><br/>
<hr/>
<h3>반복문으로 체크박스 10개를 만드는데 숫자를 붙여서 가로로 출력</h3>
	
	<% for(int i = 1 ; i<=10 ; i++){ %>
		<%=i %><input type="checkbox" name="test">
	<%} %> 

<hr/>
<h3>중첩반복문을 이용해서 1-9단까지 표현식으로 사용해서 구구단 출력(out사용X)</h3>
	
	<% for(int i = 1 ; i<=9 ; i++){ %>
		구구단 <%=i %>단<br/>
		<%for(int j = 1; j <=9 ; j++){ %>
			<%=i %> x <%=j %> = <%=i*j %> <br/>
		<%} %>
		<hr/>
	<%} %>
	
	<%
		for(int i=1; i<=9 ; i++){
			for(int j = 1 ; j<=9 ; j++){
				out.println(i+"*"+j+"="+i*j+"<br/>");
			}
			out.println("<hr/>");
		}%>
		                                      
	

</body>
</html>