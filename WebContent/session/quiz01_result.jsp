<%@ page import="session.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//자바에 클래스를 이용해보자 (5가지 정보를 하나의 클래스에 저장하여 사용)
	
	/*
	1. 사용자가 입력한 값을 받은 다음에, 값을 저장할 수 있는 자바클래스(getter,setter생성)를 생성합니다. 
	2. 받은 값을 User클래스에 저장하고,  저장한 User클래스를 세션에 저장하세요.
	3. quiz01_ok페이지로 리다이렉트 합니다. 이곳에서 세션에 저장된 id,이름만을 뽑아서 출력해주세요.	
	*/
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String region = request.getParameter("region");
	//User객체 생성
	User user = new User(id,pw,name,email,region);
	//User클래스를 세션에 저장
	session.setAttribute("User",user);
	
	response.sendRedirect("quiz01_ok.jsp");
%>
