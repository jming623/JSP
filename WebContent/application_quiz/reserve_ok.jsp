<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 예약페이지에서 넘어온 좌석 정보를 받습니다.
		String[] arr = request.getParameterValues("reserve");
		System.out.println(Arrays.toString(arr));
	// 2. 좌석정보를 임시로 저장할 A리스트 생성
		List<String> list = new ArrayList<>();
	// 3. application에 B리스트가 있다면 꺼내와서 A에 저장합니다. 없으면 그냥 A리스트 사용
		if(application.getAttribute("list") != null ){ //있는경우
			list = (List<String>)application.getAttribute("list");
		}
	// 4. A리스트와 좌석정보를 비교해서 중복된 좌석이 아니라면 사본리스트를 생성하고, 하나씩 추가하세요.
		List<String> temp = new ArrayList<>();	
		
		for(int i = 0; i<arr.length; i++){
			if(list.contains(arr[i])){//중복값이 있다면 
				break;
			}else{//중복값이 없다면				
				temp.add(arr[i]);
			}
		}
		//5. 사본리스트와 seat과의 길이가 같다면 중복이 없다는 뜻이므로
		//	  사본리스트를 A리스트에 전체 추가하고 app저장
		if(temp.size() == arr.length){ //중복이없다면 
			list.addAll(temp);
		}
		
		//application에 같은 이름으로 추가.
		application.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h3>예약한 좌석</h3>
		<%=temp.toString()%> 
		<b>신청결과</b>
		<%=temp.size()==arr.length?"성공":"실패"%> <hr width="400" color="black">
		<a href="reserve.jsp">다시예약하기</a>
	</div>
</body>
</html>