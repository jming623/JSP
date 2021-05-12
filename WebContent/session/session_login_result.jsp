<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	/*
	1.넘어오는 3가지 값을 받습니다.
	2.아이디랑 비밀번호가 동일하면 로그인성공이라고 가정(user_id, 실제아이디값)의 세션을 생성
	  (user_nink, 실제닉네밍)의 세션을 생성
	3.session_welcome으로 리다이렉트해서 "id(닉네임) 환영합니다"를 출력.
	    틀린경우는 로그인페이지로 리다이렉트
	4.session_welcome에는 로그아웃 a태그를 생성합니다.
	  a태그 클릭시 session_logout페이지로 이동해서 세션을 삭제하고, 다시 로그인페이지로 리다이렉트.
	*/
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)){
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick",nick);
		
		response.sendRedirect("session_welcome.jsp");
	}else{
		//response.sendRedirect("session_login.jsp");
	%>
	<!-- 이곳(html영역)에서 자바스크립트 문법을 사용해서 화면을 동적으로 만들어줄 수도 있습니다. -->
	<script>
		
		/*
			HTML에서 동적인 부분의 처리는 JS를 이용합니다.
			스크립트 사용은 script태그안에 작성을 합니다.
		*/
		
		//var a = 1; //변수선언
		//function 이름(a){ //메서드 선언
			
		//}
		
		//alert("아이디 비밀번호를 확인하세요"); //경고창
		//confirm("yes or no 확인창!"); //예 아니요를 선택할 수 있는 경고창 
		//history.go(-1); //뒤로 한칸 만약-2라고 적으면 뒤로 두칸
		//location.href="session_login.jsp"; //jsp에 sendRedirect()와 같음
	
		function check(){
			alert("아이디 또는 비밀번호를 확인하세요.");
			location.href="session_login.jsp";
		}
		
		check(); //호출
		
	</script>
	
	<%
	}
	%>
	
	

