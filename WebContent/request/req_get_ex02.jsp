<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");	
	String[] inter = request.getParameterValues("inter"); //체크박스는 이메서드를 통해 값을 전달받습니다.
	String major = request.getParameter("major");//radio는 한개만 선택하는 것이기때문에 그냥 받아도됩니다.
	String region = request.getParameter("region"); //radio속성
	String comments = request.getParameter("comments");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디:<%=id %><br/>
	비밀번호:<%=pw %><br/>
	이메일:<%=email %><br/>
	관심분야:<%=Arrays.toString(inter) %><br/>
	전공:<%=major %><br/>
	지역:<%=region %><br/>
	자기소개:<%=comments %> <br/>
	
</body>
</html>