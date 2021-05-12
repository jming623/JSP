<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//uathYN(인증) 이 없는 사람은 인증을 하고 오도록 처리.

	if(session.getAttribute("authYN") == null){ //이렇게 하는 이유는 URL만보고 auth를 거치지않은체 바로 들어오는 사용자를 막기위해
		response.sendRedirect("auth.jsp"); 
	}

 	List<String> list = new ArrayList<>();
	if(application.getAttribute("list") != null){
	 list =(ArrayList<String>)application.getAttribute("list");		
	}
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		태그를 선택하지 못하도록 처리하는 옵션 disabled
		checkbox, radio를 미리 선택되게 하는 옵션 checked
		select태그에서 미리 값을 선택되게 하는 옵션 selected
		input태그를 읽기만 허용하는 속성 readonly 
		input태그의 값을 반드시 입력하게 하는 속성 required
	 -->
	
	<div align="center">
	
		<h2>영화 예매 페이지</h2>
		<h3>좌석을 체크한 후에 예약버튼을 클릭하세요.</h3>
		<hr/>
	
		<form action="reserve_ok_t.jsp" method="post">
			<b>좌석 배치도</b> <br/>
			&nbsp;&nbsp;
			<% for(char c = 'A' ; c <= 'Z' ; c++){ %>
			
				<small><%=c %></small>&nbsp;&nbsp;
			<%} %>
		<br/>
		
			<%for(int i = 1; i <=6; i++) {%>
				<%=i %>						
				<%for(char c = 'A' ; c <= 'Z' ; c++) {%>	
					<%if(list.contains(c+"-"+i)){ %>
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>" disabled>
					<% }else{%>
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>">
					<%} %>				
				<%} %>
				<br/>
				<%= i == 3 ? "<br/>" : "" %> <!-- 굉장히 중요한 표현식 i가3이되면 <br/>을 아니면 공백을 출력하는 표현식-->
			<%} %>
		<input type="submit" value="예약">
		<input type="reset" value="초기화">
		</form>
		
	</div>
	
</body>
</html>