<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<!-- 헤더와 푸터를 다른 JSP파일에서 작성해서 include해서 가져옴  -->
	<!-- 헤더와 푸터 파일을 만들때 기본적으로 각각가지고 있는 <!DOCTYPE html>부분부터 </html>까지   -->
	
	<%@ include file="include_header.jsp" %>
	
	<section>
		<h3>본문영역.....</h3>
	</section>
	
	<%@ include file="include_footer.jsp"  %>
