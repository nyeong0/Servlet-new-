<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료 구조 활용</title>
</head>
<body>
	<%
		//과일 이름 리스트
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
	
		String fruitString = "";
		for(int i = 0; i < fruitList.size(); i++){
			fruitString += fruitList.get(i);
		}
		
	%>
	
	<h2><%=fruitString %></h2>
	
	<table border="1">
		<% for(int i = 0; i < fruitList.size(); i++){ %>
			<tr>
				<td><%=fruitList.get(i) %></td>
			</tr>
		<% }%>
	</table>
	
	
	<%
		// 과목 성적 맵
		// {"국어":85, "수학":90, "영어":100}
		Map<String, Integer> scoreMap1 = new HashMap<>();
		scoreMap1.put("국어", 85);
		scoreMap1.put("수학", 90);
		scoreMap1.put("영어", 100);
		
		Map<String, Integer> scoreMap2 = new HashMap<>();
		scoreMap2.put("국어", 50);
		scoreMap2.put("수학", 70);
		scoreMap2.put("영어", 80);
		
		
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		scoreList.add(scoreMap1);
		scoreList.add(scoreMap2);
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
			</tr>
		<thead>
		<tbody>
		<% // for(int i = 0; i < scoreList.size(); i++){
			// Map<String, Integer> scoreMap = scoreList.get(i);
			for(Map<String,Integer> scoreMap : scoreList){
			
			%>
			<tr>
				<td><%= scoreMap.get("국어") %></td>
				<td><%= scoreMap.get("수학") %></td>
				<td><%= scoreMap.get("영어") %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>