<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그에 강의목록을 식별할 수 있는 매개값을 넘겨주세요.
		두번째 화면에서는 식별할 값 별로 해당 동영상만 보여지도록 처리해보세요
	 -->
		
		<!-- action = "req_video_result.jsp" -->
	<div align = "center">
	<h3>신나는 강의 목록</h3>
		<table border="1">
			<tr>
				<th>이미지</th>
				<th>강의명</th>
				<th>내용</th>
				<th>일자</th>
			</tr>		
			<tr>
				<td>
					<a href="req_video_result.jsp?course=java">
						<img src="img/java.png" width="100" alt="자바" name="Java"> 
					</a>
				</td>				
				<td>자바강의</td>
				<td>
				<a href="req_video_result.jsp?course=java">자바 기본문법을 학습합니다</a>
				</td>
				<td>2020-01-01</td>
			</tr>
			<tr>
				<td>
					<a href="req_video_result.jsp?course=js">
						<img src="img/js.png" width="100" alt="js" name="JS">
					</a>
				</td>
				<td>JS강의</td>
				<td>
				<a href="req_video_result.jsp?course=js">JS 기본문법을 학습합니다.</a>
				</td>
				<td>2020-02-02</td>
			</tr>
			<tr>
				<td>
					<a href="req_video_result.jsp?course=oracle">
						<img src="img/oracle.png" width="100" alt="oracle" name="Oracle">
					</a>
				</td>
				<td>Oracle강의</td>
				<td>
					<a href ="req_video_result.jsp?course=oracle">sql문을 학습합니다.</a>
				</td>
				<td>2020-03-03</td>
			</tr>
		</table>	
	</div>
	
</body>
</html>