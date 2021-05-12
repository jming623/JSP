<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String s_height = request.getParameter("height");
	String s_weight = request.getParameter("weight");
	
	double height = Double.parseDouble(s_height);
	double weight = Double.parseDouble(s_weight);
	
	double bmi = weight/ ((height/100)*(height/100)) ;
	
	String result = null;
	if(bmi >= 25){
		result = "과체중";
	}else if(bmi <= 18){
		result = "저체중";
	}else{
		result = "정상";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=name %>님의 BMI결과</h4>
	<hr/>
	키: <%=height %><br/>
	몸무게: <%=weight %><br/>
	BMI: <%=bmi %><br/>
	결과: <%=result %>
</body>
</html>