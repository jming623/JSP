<%@page import="bean.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	
	User user = new User();
	user.setId(id);
	user.setEmail(email);
	
	//리퀘스트에 user객체를 강제로 저장
	request.setAttribute("user", user);
	//포워드이동
	request.getRequestDispatcher("bean_java_ex03.jsp").forward(request,response);

%>