<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //bean을 쓸때는 값을 받아와야하는 request문을 생략할 수 있다. (property="*")
%>
<!-- 객체생성 -->
<jsp:useBean id="user" class="bean.example.User" scope="request"/>
<!-- ex01에서 넘어온값을 setter로 저장 -->
<jsp:setProperty property="*" name="user"/> <!-- user로 만들어진 객체의 속성(변수명)과 ex01에서 넘어온 값들의 속성이 같을때 자동으로 추가해줌 -->
<!-- ex03으로 이동(forward)  --> <!-- redirect로 넘기면 scope가 request기때문에 값이 넘어가지 않음. -->
<jsp:forward page="bean_tag_ex03.jsp"/>