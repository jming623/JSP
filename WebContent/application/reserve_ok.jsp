<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	 예약좌석정보를 담고있는 복사본list(A)가 필요.
	 어플리케이션에 (A)list가있는지 없는지 확인하고 있다면 꺼내와서 생성되는 list(B)와 비교 (contains이용)
	 만약 B리스트의 값이 A리스트에 하나라도 들어있다면 예약실패(for문을 탈출하고 자리선택페이지로 돌아감), \
	 하나도 없다하면 예약성공(생성된 B리스트를 기존의 A리스트에 addAll로 저장, B리스트는 다시 어플리케이션에 저장)	 
	*/
	
	/*
		1. 예약페이지에서 넘어온 좌석 정보를 받습니다.
		2. 좌석정보를 임시로 저장할 A리스트 생성
		3. application에 B리스트가 있다면 꺼내와서 A에 저장합니다. 없으면 그냥 A리스트 사용
		4. A리스트와 좌석정보를 비교해서 중복된 좌석이 아니라면 사본리스트를 생성하고, 하나씩 추가하세요.
		5. 사본리스트와 A리스와 길이가 같다면 중복이 없다는 뜻이므로 사본리스트를 A리스트에 전체 추가하고 app에 저장. 
	*/
	//예약페이지에서 넘어온 좌석정보
	String[] arr = request.getParameterValues("seat");
	System.out.println(Arrays.toString(arr));
	
	//app에서 받아온 기존 예약정보
	ArrayList<String> reserved = new ArrayList<>();
	
	if(application.getAttribute("reserved") != null){
		reserved = (ArrayList<String>)application.getAttribute("reserved");
		
		
		
	}
	System.out.println(reserved.toString());
	
	if(reserved != null){//기존app에 예약정보가 있다면 		
		
		//중복값 검사
		for(int i = 0 ; i < arr.length ; i++){
			if(reserved.contains(arr[i])){
				response.sendRedirect("reserve.jsp");			
			 }
		}
	
		//중복값이 없다면 
		List<String> list = new ArrayList<>();
		
		for(int i = 0 ; i < arr.length; i++){
			list.add(arr[i]);
		}
		//reserved리스트에 추가
		reserved.addAll(list);
		//app추가
		application.setAttribute("reserved", reserved);	
	
	}else{//기존app에 예약정보가 없다면
		List<String> list = new ArrayList<>();
		
		for(int i = 0 ; i < arr.length ; i++){
			list.add(arr[i]);
		}
		
		application.setAttribute("reserved", list);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h4>예매현황</h4>
		<hr/>
		<p>예매가 정상적으로 처리되었습니다.</p>
		<a href="auth.jsp">초기화면으로 이동</a>
</body>
</html>