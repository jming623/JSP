<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 내부스타일 시트는 위쪽에 style태그를 이용해서 디자인을 주는 방식입니다. -->
	<!-- 태그에는 class속성이 존재하고, 디자인을 줄때 이 클래스를 선택하는 방법을 많이 사용합니다. -->
	<!-- 클래스에 접근하는 선택자는 . 입니다 -->
	<style>
		.form-content {width: 200px; margin: 0 auto;}
		.form-control {width: 100%; box-sizing: border-box; margin-top:2px;}
		.form-group{text-align: center; margin-bottom:5px;}
	</style>
</head>
<body>

	<!-- 
	css는 html에 디자인을 입히는 언어입니다.
	사용하는 형식으로는 인라인시트, 내부스타일시트, 외부스타일시트
	인라인시트: 태그에 직접 
	내부스타일시트: 위에 선언
	외부스타일시트 : 외부에서 받아옴
	-->

	<section>
		<div class="form-content"> <!-- 모든태그들은 class를 가질 수 있습니다. -->
			<form action="res_ex02_result.jsp" method="post" class="form-group">
				<span>로그인 폼!</span> <br/>
				
				<input type="text" name="id" placeholder="아이디" class="form-control"><br/>
				<input type="password" name="pw" placeholder="비밀번호" class="form-control"><br/>
				
				<input type="submit" value="로그인" style="color : black;
					   background-color: beige;" class="form-control">	<!-- style태그안에 css문법으로 작성 -->
					   <!-- 태그안쪽에 style문법을 사용하면 인라인시트 -->
			</form>
		</div>	
	</section>
	
</body>
</html>