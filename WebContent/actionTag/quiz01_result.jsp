<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="quiz01_error.jsp" %>
<%
	/*
		앞에서 넘어온 값을 받아서 평균을 구합니다. 
		평균이 60점 이상이라면 quiz01_ok.jsp로 이동해서
		~~님 평균xx점 합격입니다.

		이하인경우 quiz01_no.jsp로 이동해서
		~~님 평균xx점 불합격입니다.
		
		조건:session을 사용하지 않습니다.
	*/
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String skor = request.getParameter("kor");
	String smath = request.getParameter("math");
	String seng = request.getParameter("eng");
	
	double kor = Double.parseDouble(skor); 
	double math = Double.parseDouble(smath); 
	double eng = Double.parseDouble(seng); 
	
	double avg = (kor+math+eng) / 3 ;
	avg = Math.round(avg*10)/10.0;
	
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	/*
		forward는 자바코드로도 가능
		if(avg >= 60){
			Dispatcher dp = request.getRequestDispatcher("quiz01_ok.jsp")
			dp.forward(request,response);
		}else{
			위 두줄은 줄여서 이렇게 작성가능
			request.getRequestDispatcher("quiz01_no.jsp").forward(request,response);
		}
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%if(avg >= 60){  %>		
		<jsp:forward page="quiz01_ok.jsp"/>
	<%}else{  %>
		<jsp:forward page="quiz01_no.jsp"/>
	<%} %>
	
</body>
</html>