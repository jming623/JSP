<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>req_video페이지로 이동</p>	
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로 -->
	<a href="/JSP/request/request_video.jsp">req_video페이지로 이동(절대경로)</a> <br/>
	<a href="../request/request_video.jsp">req_video페이지로 이동(상대경로)</a>
	
	<hr/>
	<p>TestServlet페이지로 이동</p>	
	<!-- a태그를 이용해서 TestServlet의 URL맵핑경로를 확인해서 상대경로, 절대경로로 이동 -->
	<a href="/JSP/kkk">TestServlet으로 이동(절대경로)</a> <br/>
	<a href="../kkk">TestServlet으로 이동(상대경로)</a>
	
	<hr/>
	<p>java.png페이지로 이동</p>
		<table border="1">
			<tr>
				<td>절대경로</td>
				<td>
					<a href="/JSP/request/img/java.png">
						<img src="/JSP/request/img/java.png" width="50" height="50" >
					</a>
				</td>
			</tr>
			<tr>
				<td>상대경로</td>
				<td>
					<a href="../request/img/java.png">
						<img src="../request/img/java.png" width="50" height="50">
					</a>
				</td>
			</tr>
		</table>
			
<!-- 	<p>java.png페이지로 이동</p>	
	img태그로 java.png파일을 상대경로, 절대경로로 참조
	절대경로<a href="/JSP/request/img/java.png"><img src="/JSPBasic/request/img/java.png" width="50" height="50" ></a><br/>
	상대경로<a href="../request/img/java.png"><img src="../request/img/java.png" width="50" height="50"></a> -->
	
</body>
</html>