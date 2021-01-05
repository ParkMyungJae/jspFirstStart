<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>스크립트릿 사용하기</title>
	</head>
	<body>
		<h1>변수</h1>
		<%
			String name = "박명재";
		%>	
		
		이름 : name		<br />
		이름 : <%= name %>
		
		<h1>조건문</h1>
		<% 
			
		if(name.equals("홍길동")) {
			out.print("틀림");
		}else {
			out.print("맞음");
		}
			
                          %>
		
		<h1>반복문</h1>
		<%
		
		for(int i = 1; i <= 10; i++) {
			out.print(i + " ");
		}
			
		%>
	</body>
</html>