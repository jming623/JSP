<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	선언자, 스크립을 적절하게 사용합시다.
	어피치, 라이언 , 제이지, 무지, 프로도를 가지고있는 배열 생성
	랜덤하게 선택된 카카오프렌즈를 list에 추가하는 형식으로 작성을 합니다. (10개까지)	
--%> 
    <%!
    	String[] jobs = {"어피치","라이언","제이지","무지","프로도"};   	
    	List<String> list = new ArrayList<>();
    %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
		int i = (int)(Math.random()*5);
		
		list.add(jobs[i]);					
	%>
		
	<%  
	int count = 0;
		for(int a = 0; a < list.size(); a++){
			if(list.get(a).equals(jobs[i])){
				count++;
			}
		}
	%>
	<b>[<%=jobs[i] %>]</b> 님이 입장 <br/>
	현재 같은 카카오 프렌즈는 <%=count %>명입니다.
	<H2>현재 구성정보</H2> 
	<%=list.toString() %>
	(<%=list.size() %>명 참가중)
	
	<%
	if(list.size() == 10){
		list.clear();
	}
	%>
	
</body>
</html>