<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String a = request.getParameter("a");
	String b = request.getParameter("b");
	String c = request.getParameter("c");

	if(name.equals("") || a.equals("") || b.equals("") || c.equals("") ){
		response.sendRedirect("quiz01.jsp");
	} else{
		int sc1 = Integer.parseInt(a);
		int sc2 = Integer.parseInt(b);
		int sc3 = Integer.parseInt(c);
	
	double avg = (sc1+sc2+sc3) / 3.0;
	
	if( avg >= 60){
		response.sendRedirect("quiz01_ok.jsp");
		
	}else{
		response.sendRedirect("quiz01_no.jsp");
	}
	
	}
%>