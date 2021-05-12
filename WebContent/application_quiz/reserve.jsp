<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String auth = (String)session.getAttribute("auth");

	if(!auth.equals("y")){
		response.sendRedirect("auth.jsp");
	}

	List<String> list = new ArrayList<>();
	if(application.getAttribute("list")!=null){//세션이 생성된경우
		list = (List<String>)application.getAttribute("list");		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>영화 예매페이지</h2>
		<h4>좌석을 선택한 후에 예약버튼을 클릭하세요.</h4> 
		<hr/>
		
		<form action="reserve_ok.jsp" method="post">
			<table>
				<tr>
				<th></th>
			<%for(char c = 'A'; c <= 'Z' ; c++ ) {%>
				<th><%=c %></th>	
			<%} %>
				</tr>
			<%for(int i = 1; i <= 6; i++){//열%>
				<tr><td><%=i%></td>
				<%for(char c = 'A'; c <='Z'; c++){//행%>
					<%if(list.contains(i+"-"+c)) {%>
					<td><input type="checkbox" name="reserve" value="<%=i%>-<%=c%>" disabled> </td>
					<%}else{ %>					
					<td><input type="checkbox" name="reserve" value="<%=i%>-<%=c%>"> </td>
					<%} %>
				<%} %> 
				</tr>				
			<%} %>
			</table>
			<br/>
			<input type="submit" value="예약">
			<input type="reset" value="초기화">
		</form>	
	</div>
	
	
</body>
</html>