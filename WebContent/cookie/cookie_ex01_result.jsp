<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//데이터를 처리하는 페이지~
	/*
	1.전송되는 3가지 값을 받습니다.
	2.id=abc, pw= 1234라면 로그인이라 간주하고 user_id이름의 실제 아이디값을 담는 쿠키생성
	3. 아이디,비밀번호가 틀리면 로그인페이지로 리다이렉트.
	4. 로그인 성공시 cookie_ex01_welcome페이지로 리다이렉트 화면에 "~~아이디님 환영합니다"를 출력	
	*/
	
	request.setCharacterEncoding("UTF-8");
	
	//1.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String ch = request.getParameter("idCheck");
		
	
	//2.
	if(id.equals("abc") && pw.equals("1234")){ //로그인 성공
		//쿠키생성
		Cookie idCoo = new Cookie("user_id","abc");
		//쿠키 속성
		idCoo.setMaxAge(20);
		//쿠키 저장
		response.addCookie(idCoo);
		
		//아이디기억하기 쿠키
		if(ch != null){
			Cookie check = new Cookie("idCheck" ,id);
			check.setMaxAge(1800); //30분
			response.addCookie(check);
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp");
	}else{//로그인 실패
		response.sendRedirect("cookie_ex01.jsp");
	}	
%>
