<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String r_code = request.getParameter("code");
	String s_code= (String)session.getAttribute("auth");
	
	if(r_code.equals(s_code)){
		//예약페이지에서 확인할 세션생성
		session.setAttribute("auth", "y");
		
		response.sendRedirect("reserve.jsp");
	}else{%>
		<script>
			alert("인증코드를 확인해주세요.");
			location.href="auth.jsp";
		</script>
	<%} %>

