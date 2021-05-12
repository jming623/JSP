<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		앞에서 넘어온 request값, 세션에 저장된 인증문자값을 비교해서, 일치하면 예약페이지(reserve.jsp)로 리다이렉트
		일치하지 않으면 auth.jsp페이지로 이동(JS사용)
	*/
	
	request.setCharacterEncoding("UTF-8");
	
	String auth =(String)session.getAttribute("auth");
	String code = request.getParameter("code");
		
	if( auth.equals(code) ){ 
		//추가.예약페이지에서 사용할 인증확인 세션을 생성
		session.setAttribute("authYN", "y");
		
		response.sendRedirect("reserve.jsp");
	}else{%>
	<script>
		function check(){
			alert("인증코드가 틀렸습니다, 다시입력해주세요.");
			location.href="auth.jsp";
		}
		
		check();
	</script>		
<% 	} %>

