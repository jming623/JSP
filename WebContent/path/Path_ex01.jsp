<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>path_ex01</h4>
	
	<!-- 
	절대경로: 프로젝트(or폴더구조에서)의 전체경로 (IP주소,port번호 제외 /컨택스트패스(contextpath) 부터 시작
	상대경로: 내현재 위치에서 상대적으로 참조해서 사용하는 경로
	 -->
	 
	 <a href="Path_ex02.jsp">path_ex02로 이동(상대경로)</a> <br/>	 <!-- 같은폴더에 있으니 파일명만  -->
	 <a href="/JSP/path/Path_ex02.jsp">path_ex02로 이동(절대경로)</a> <!-- WenContent는 생략이됨  -->
</body>
</html>