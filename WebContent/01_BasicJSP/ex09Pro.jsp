<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>내장객체 request</title>
	</head>
	<body>
		<% request.setCharacterEncoding("UTF-8"); %>
	
		<%
			String local = request.getParameter("local");
			
			String localNum = "";
			if(local.equals("서울")){
				localNum = "02";
			}else if(local.equals("경기")){
				localNum = "031";
			}else if(local.equals("강원")){
				localNum = "033";
			}
		
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
		%>	
		
		<h3>당신의 전화번호는 <%= localNum %> - <%= tel1 %> - <%= tel2 %></h3>
		
		<br>
		
		<% 
		String gender = request.getParameter("gender");
		
		String[] hobby = request.getParameterValues("hobby");
		%>
		
		<%= gender %>
		
		<br>
		
		<%
		for(int i = 0; i < hobby.length; i++) {
			out.print(hobby[i] + " ");
		}
		%>
	</body>
</html>