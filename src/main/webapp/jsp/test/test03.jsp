<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.Date"%>
<%@ page import= "java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜,시간</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	
	<%
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		Date now = new Date();
		
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 dd일"); 
		SimpleDateFormat timeFormatter = new SimpleDateFormat("HH시 mm분 ss초"); 
		
		String dateString = "현재 날짜 " + dateFormatter.format(now);
		String timeString = "현재 시간 " + timeFormatter.format(now);
		
		// what 파라미터
		// "date" 날짜
		// "time" 시간
		
		String what = request.getParameter("what");
		
		String resultString = null;
		if(what.equals("date")){
			resultString = dateString;
		} else {
			resultString = timeString;
		}
	%>
	
		<div class="container">
			<div class="display-4"><%=resultString %></div>
		</div>
		
		
		
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
</body>
</html>