<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%> 
 <!-- param태그는 forward방식의 필요한 값을 담아줄때 사용합니다.(setAttribute와 동일한 기능을 가지고있음)  -->
<jsp:forward page="param_ex03.jsp"> 
	<jsp:param value="똑똑이" name="nick"/>
	<jsp:param value="20" name="age"/>
</jsp:forward>