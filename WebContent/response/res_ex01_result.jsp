<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");//한글처리
	
	String name = request.getParameter("name");
	String s_age = request.getParameter("age");
	
	//age를 20이상,이하별로 다른 이미지를 보여주고싶다면?
	int age = Integer.parseInt(s_age);
	
	if(age>=20){
		response.sendRedirect("res_ex01_ok.jsp");
	}else{
		response.sendRedirect("res_ex01_no.jsp");
	}
//이 페이지는 화면에 보여질 화면이 아니기때문에 아래부분은 다 지워도 무관.	
%>    
