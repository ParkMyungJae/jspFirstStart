<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2개의 정수 합 구하기</title>
</head>
<body>
	<%
	Random ran = new Random();
	int num1 = ran.nextInt(100); // 숫자의 범위? 0 ~ 99;
	int num2 = (int)(Math.random() * 99) + 1; // Math.random() 설명 Math는 Object에 있는 것이라 import 필요가 없다.
	%>

	<h1>두 수의 합을 구하시오</h1>
	<form action="SansuResult.jsp" method="GET">
		<input type="text" name="num1" value="<%= num1 %>" readonly="readonly"> + <input type="text"
			name="num2" value="<%= num2 %>" readonly="readonly"> <br> 내가 생각한 답은 <input type="text"
			name="result" required="required">입니다. <input type="submit" value="확인">
	</form>
</body>
</html>