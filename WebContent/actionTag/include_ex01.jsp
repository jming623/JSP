<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>여기는 1번페이지</h2>
	<%// 지시자 include는 변수까지 불러올 수 있다. 활용도가 더 높음 %>
	<%-- <%@ include file="include_ex02.jsp" %> --%>
	<%// actionTag include는 단순히 html영역만 불러오고 변수는 불러올 수 없음. %>
	<jsp:include page="include_ex02.jsp"/>
	
	<%-- <%=total %> --%>
	

	
</body>
</html>