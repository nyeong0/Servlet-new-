<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP스크립트 요소</title>
</head>
<body>
	<h2>1.점수들의 평균 구하기</h2>
		<%
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		
		double avg = sum / scores.length;
		%>
		
	<h3>평균 : <%=avg %></h3>
		
	<h2>2. 채점 결과</h2>
	<%--
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int value = 0;
		for(int i = 0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				value += 10;
			}
		}
	--%>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int value = 0;
		for(String answer:scoreList){
			if(answer.equals("O")){
				value += 10;
			}
		}
	%>
	
	<h3>채점 결과 : <%=value %>점</h3>
	
	<h2>3. 1부터 n까지의 합계를 구하는 함수</h2>
	<%!
	public int sum(int number){
		int sum2 = 0;
		for(int i = 1; i <= number; i++){
			sum2 += i;
		}
		return sum2;
	}
	%>
	<h3>1부터 50까지 합은<%= sum(50)%></h3>
	
	<h2>4.나이 구하기</h2>
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2024 - year + 1;
	%>
	
	<h3>20010820의 나이는 <%=age %>세 입니다.</h3>
	
	
	
	
		
</body>
</html>