package com.nyeong.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response header - 응답 데이터에 대한 정보 갖고 있음
		// 1) character set : utf-8 (고정)
		// 2) 데이터 타입 : MIME (text/plain...여러가지 있음)
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// response body - 화면에 뿌려줌 
		PrintWriter out = response.getWriter(); //문자열로 바꿔주는 기능을 가진 PrintWriter 객체
		out.println("URL Mapping 예제");
		
		// 현재 날짜 시간 response에 담기
		Date now = new Date();
		
		out.println(now);
		
		// 2024년 07월 17일 21:33:23 형태로 만들기
		SimpleDateFormat fomatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		
		String dateTimeString = fomatter.format(now);
		out.println(dateTimeString);
				
		
		
	}
}
