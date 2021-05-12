<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    /*
    1. 정수를 저장하는 list를 선언   
    2. 1~45까지 로또번호를 리스트에 추가 (contains메서드)
    3. 중복되지 않은 숫자 6개를 저장하면 됩니다.
    4. 화면에 출력
    
    5. Set을 이용해서도 확인
    */
    
    	List<Integer> list = new ArrayList<>();
    	List<Integer> list2 = new ArrayList<>();
    	Set<Integer> set = new HashSet<>();
    %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
		while(list.size() < 6){
			int ran = (int)(Math.random()*45)+1;
			
			if(!list.contains(ran)){
				list.add(ran);
				
			}
		}
	%>
	
	 	<h3>로또번호(List)(향상된for)</h3>
	 	<%for(Integer i:list){ %>
			<%=i %> &emsp; 
		<%} %>
		
	<% 
		while(list2.size() < 6){
			int ran = (int)(Math.random()*45)+1;
			
			if(!list2.contains(ran)){
				list2.add(ran);
				
			}
		}
	%>	
		
		<h3>로또번호(List)(일반for)</h3>
		<%for(int i = 0 ; i < list2.size() ; i++){ %>
			<%=list2.get(i) %> &emsp;	
		<%} %>
		
		
	<%
		while(set.size() <6){
			int ran2 = (int)(Math.random()*45)+1;
			set.add(ran2);
		}
	%>	
	<h3>로또번호(Set)(향상된for)</h3>
	<% for(Integer i :set) {%>
		<%=i %> &emsp;
	<%} %>
</body>
</html>