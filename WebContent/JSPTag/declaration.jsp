<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//선언자 declaration은 전역의 이미로 사용되고, 화면에서 사용할 메서드나 멤버변수를 선언할 때 사용합니다. %>    
<%!
	public int i = 10; //멤버변수라 접근제어자를 붙힐 수있지만 다른곳에서 사용하진 않을것이기때문에 굳이 필요는 없고 알아만두자
	String str = "WEB application";
	
	public int method1(int a,int b){
		return a+b;
	}
	
	public int method2(){
		int ran = (int)(Math.random()*10)+1;
		return ran;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	i값:<%=i %><br/>
	str값:<%=str %><br/>
	메서드1호출:<%=method1(1,3) %> <br/>
	메서드2호출:<%=method2() %> <br/>
	
	
	
</body>
</html>