<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//HttpServletRequest request = new HttpServletRequest();는 자동생성됨. 그래서 바로request.으로 사용하면됨.
	
	//request객체에는 브라우저에 대한 정보 or 사용자가 전달하는 값 등등 많은 정보들을 가지고 있습니다. 
	StringBuffer url = request.getRequestURL();
	
	String uri = request.getRequestURI();
	
	String path= request.getContextPath();//컨텍스트패스:서버가 프로젝트를 구분하는 경로
	
	String meth = request.getMethod();//요청방식
	
	String remote = request.getRemoteAddr();//app에 접속한 주소
	
	System.out.println(remote);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	요청URL주소:<%=url %> <br/>
	요청URI주소:<%=uri %> <br/>
	루트경로:<%=path %><br/>
	요청방식:<%=meth %><br/>
	요청아이피:<%=remote %><br/>
	
	
</body>
</html>