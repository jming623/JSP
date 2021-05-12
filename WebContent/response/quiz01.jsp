<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
	1.form태그를 이용해서 post형식으로 이름, 국어, 수학, 영어 점수를 받습니다.
	2. quiz02페이지로 전송해서 평균을 구하고, 평균이 60이상이라면 합격페이지로 이동,미만이라면 불합격 페이지로 이동
	3. 넘어가는 값이 없는 값이라면 다시 입력받도록 리다이렉트 처리해주세요.(null이라면)
	--%>
	
	<form action="quiz01_result.jsp" method="post">
		<h2>기말고사 점수</h2>
		<hr/>
		이름: <input type="text" name="name" placeholder= "이름" required="required" > <br/> 
		<!-- required="required"는 필수입력 키워드, 입력되지않으면  넘어가지 않음. 뒤에 ="required"는 생략가능-->
		국어: <input type="text" name="a" placeholder="점수" required> <br/>
		수학: <input type="text" name="b" placeholder="점수" required>  <br/>
		영어: <input type="text" name="c" placeholder="점수" required>  <br/> <!-- 이렇게 해주면 request로 받아서 null값을 처리할 필요가 없어짐.  -->
		
		<input type="submit" value="확인">
	</form>
	 
</body>
</html>