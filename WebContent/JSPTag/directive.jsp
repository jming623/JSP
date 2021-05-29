<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Map.Entry" %>
<%@page import="java.util.Date"%> <!-- 임포트 구문  만약 util패키기에서 import해와야 할 클래스가 너무많을거같다 하면 *로 한번에 가져와도 됨-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 이부분이 directive 지시자이다 -->
    
<%
	//Date클래스를 쓰고싶은데 Date클래스는 자바유틸패키지에 있는 클래스이기때문에 import가 필요하다.
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String now = sdf.format(date);
	
	//문자열 저장하는 리스트
		List<String> list = new ArrayList<>();
		list.add("사람1");
		list.add("사람2");
		
	//키=숫자, 값=문자열 저장하는 해쉬맵
		
		Map<Integer,String> map	= new HashMap<>();
		map.put(1, "사람1");
		map.put(2, "사람2");
		
	//숫자 저장하는 Set
		Set<Integer> set = new HashSet<>();
		set.add(1);
		set.add(2);		
	
%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	지금:<%=now %><br/>
	리스트:<%=list.toString() %><br/> <!-- for문으로 -->
	맵:<%=map.toString() %><br/> <!-- Entry set문으로  -->
	셋:<%=set.toString() %><br/> <!-- Iterator나 향상된for문으로 -->
	
	<hr/>
	<!-- list호출 -->
	
	<%for(int i = 0; i<list.size(); i++){ %>
		리스트:<%=list.get(i) %> <br>
	<%} %>
	
	<!-- map호출 -->
	
	<%Set<Entry<Integer, String>> eset = map.entrySet(); %>
	
	<%for(Entry<Integer,String>s:eset) {%>
		맵(키)(값): <%=s.getKey() %>,<%=s.getValue() %><br>
	<%} %>
	
	<!-- set호출(Iterator) -->
	
	<%Iterator<Integer> iter = set.iterator(); %>
	
	<%while(iter.hasNext()){ %>
		set: <%=iter.next() %> <br>
	<%} %>
	
	<!-- set호출(향상된 for문) -->
	
	<% for(Integer i:set) {%>
		set: <%=i %> <br>
	<%} %>
	
</body>
</html>