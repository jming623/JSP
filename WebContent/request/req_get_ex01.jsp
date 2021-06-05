<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 사용자가 확인하는 화면  -->
	<!-- 사용자가 값을 입력할 때 form태그를 이용합니다. submit버튼을 누르면 form안에 데이터를 전송-->
	<!-- 전송될 주소를 action이라는 속성에 적습니다.   -->
	
	<form action="req_get_ex02.jsp">	<!-- 아무것도 적어주지 않으면 get방식 post방식을 사용하고 싶다면 method="post" -->	
	
		<h4>회원가입 양식</h4>
		아이디:<input type="text" size="10" name="id" placeholder="8글자"> <br/>
		비밀번호:<input type="password" name="pw" size="10"><br/>
		이메일:<input type="email" name= "email" size="10"><br/> <!-- 이메일 형식을 갖도록 지원 -->
		
		<!-- checkbox나 radio속성은 단드시 name속성을 통일시켜서 하나의 그룹으로 묶습니다.(그래야 나중에 값을 처리할때 문제가 발생하지 않음.)-->
		<!-- checkbox는 여러개를 체크할수있는 체크박스이고 radio는 하나만 선택할 수 있는 체크박스 -->
		
		<!-- checkbox, radio속성은 value속성에 값을 지정합니다. -->
		<!-- name으로 통일시키지 않으면 값을 불러올때 체크된 값들을 한번에모두 가져오지 못한다. -->
		관심분야:
		<input type="checkbox" name="inter" value = "JAVA">JAVA  <!-- 옆에 적힌JAVA는 태그안에들어있는게 아니고 그냥 화면에만 표시되는 글씨에 불과하기때문에 -->
		<input type="checkbox" name="inter" value = "JSP">JSP   <!-- 데이터로 넘어오는 값은 이름을 가지고있지 않게된다. 그래서 우리는 value를 통해 직접 넣어주여야 합니다. -->
		<input type="checkbox" name="inter" value = "JS">JS
		<input type="checkbox" name="inter" value = "CSS">CSS
		<input type="checkbox" name="inter" value = "DB">DB
		<br/>
		
		<!-- name으로 통일을 시키지않으면 따로따로 처리되어 여러개를 선택할 수 없게된다.-->
		전공:
		<input type="radio" name="major" value = "경영학">경영학
		<input type="radio" name="major" value = "전산학">전산학
		<input type="radio" name="major" value = "수학">수학
		<input type="radio" name="major" value = "컴퓨터공학">컴퓨터공학
		<input type="radio" name="major" value = "기계공학">기계공학
		<br/>
		
		
		지역:
		<select name="region">
			<option>서울시</option>
			<option>경기도</option>
			<option>인천시</option>
			<option>부산시</option>			
		</select>
		<br/>
		
		자기소개:<br/>
		<textarea rows="10" cols="100" name="comments"></textarea>
		<br/>
		
		<input type="submit" value="가입">  <!-- 그냥 사용하면 "제출"이라는 버튼이 생기고, 이름을 지정하고싶다면 value=""를 사용한다. -->
		<!-- 잘사용하진 않지만 초기화 기능 -->
		<input type="reset"  value="정정"> <!-- 얘도 그냥사용하면 "초기화" value사용가능 -->
		<input type="button" value="버튼"> <!-- 생기기만하고 아무기능없는 버튼  -->
		
	</form>
</body>
</html>