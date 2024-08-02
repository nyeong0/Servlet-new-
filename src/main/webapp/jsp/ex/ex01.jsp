<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법</title>
</head>
<body>
	<h2>1. 기본 문법</h2>
	
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	<%-- 스크립트릿 --%>
	<% 
		// 자바 문법 시작
		// 1부터 10까지의 합 구하기
		int sum = 0;
		for(int i = 0; i <= 10; i++){
			sum += i;
		}
	%>
	
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%=sum %>">
	
	<%= sum*2 %>
	
	<h2>2. 리스트 다루기 </h2>
	
	<%
		// 동물 이름 저장 리스트
		List<String> animalList = new ArrayList<>();
		animalList.add("dog");
		animalList.add("cat");

	%>
	
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
	</ul>
	
	<h2>3. 선언부</h2>
	<%! 
		// hello world 문자열을 리턴하는 메소드
		public String getHelloWorld(){
			return "Hello World";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
</body>
</html>