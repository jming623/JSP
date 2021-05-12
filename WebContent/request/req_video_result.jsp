<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String a = request.getParameter("course");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(a==null){ %>
		<p>잘못된 경로 입니다.</p>
	<%}else if( a.equals("java") ) {%>
		<div align = "center">
			<h2>강의 영상</h2>
			<hr/>
			<p>자바 수업소개</p>
				<iframe width="450" height="280"
				 		src="https://www.youtube.com/embed/L0a6N-rj-CI" 
						title="YouTube video player" frameborder="0"
			 			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			 			allowfullscreen>
				</iframe>			
		</div>
	<% }else if(a.equals("js") ){ %>	
		<div align = "center">
			<h2>강의 영상</h2>
			<p>JS 수업소개</p>
			<iframe width="450" height="280"
			 		src="https://www.youtube.com/embed/nOTpuof2YG8"
			 		title="YouTube video player" frameborder="0"
		 	 		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
		 	 		allowfullscreen>
			 </iframe>
		</div>
	<%}else{ %>
		<div align="center">
			<h2>강의 영상</h2>
			<p>Oracle 수업소개</p>
			<iframe width="450" height="280" 
					src="https://www.youtube.com/embed/DEVR_R2Hva0" 
					title="YouTube video player" frameborder="0" 
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
					allowfullscreen>
			</iframe>
		</div>
	<%} %>
	
</body>
</html>