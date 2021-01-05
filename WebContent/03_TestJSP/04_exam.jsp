<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
	<form action="01_index.jsp" method="POST">
		<h2>다음 문제를 읽고 답을 고르시오.</h2>
		
		<p>1.JSP를 바르게 풀어 쓴 것은?[10점]</p>
		<input type="radio" name="number1" value="1"> Json Server Page <br>
		<input type="radio" name="number1" value="2"> Java Server Page <br>
		<input type="radio" name="number1" value="3"> Json Servlet Page <br>
		
		<p>JSP태그의 종류와 설명이 잘못 짝지어진 것은?[10점]</p>
		<input type="radio" name="number2" value="1"> 지시어(&lt% %&gt) <br>
		<input type="radio" name="number2" value="2"> 표현식(&lt%! %&gt) <br>
		<input type="radio" name="number2" value="3"> 주석(&lt%-- --%&gt) <br>
		<input type="radio" name="number2" value="4"> 스크립트릿(&lt% %&gt) <br>
		
		<p>JSP언어에 관한 설명으로 잘못된 것은?[10점]</p>
		<input type="radio" name="number3" value="1"> 서블릿 기술에 기초한다. <br>
		<input type="radio" name="number3" value="2"> 자바 언어의 특성을 활용할 수 있다. <br>
		<input type="radio" name="number3" value="3"> 내장객체가 있어서 선언없이 사용할 수 있다. <br>
		<input type="radio" name="number3" value="4"> 스크립트 방식으로 프로그램을 작성할 수 있다. <br><br>
		
		<input type="submit" value="제출하기">
	</form>
	
</body>
</html>