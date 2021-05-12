<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>
<%-- 
	id = bean의 이름(식별할 이름)
	class = 실제 사용할 클래스의 경로 (자바빈을 사용하려면 실제로 자바클래스가 생성되어야한다.)
	scope = bean의 사용범위
	
	스코프속성
	page - 현재페이지에서만 사용가능
	request - 다음페이지까지 사용가능
	session - 브라우저가 종료될때까지 사용가능
	application - 톰캣이 종료될때까지 사용가능 
--%>
<%// setProperty로 아래 생성한 자바빈에 값을 넣어줄 수 있다. %>
<jsp:useBean id="user" class="bean.example.User" scope="request"/> 

<!-- setter의 사용 -->
<!-- property는 자바클래스의 변수명 name은 자바클래스명 value는 지정할 값	-->
<jsp:setProperty property="id" name="user" value="<%=id %>"/> <!-- 자바 user(name)클래스의 변수 id(property)에다가 id값을 넣어준다 (value)-->
<jsp:setProperty property="pw" name="user" value="<%=pw %>"/>
<jsp:setProperty property="name" name="user" value="<%=name %>"/>
<jsp:setProperty property="email" name="user" value="<%=email %>"/>

<!-- getter에 사용 -->
<jsp:getProperty property="id" name="user"/>
<jsp:getProperty property="pw" name="user"/>
<jsp:getProperty property="name" name="user"/>
<jsp:getProperty property="email" name="user"/>
