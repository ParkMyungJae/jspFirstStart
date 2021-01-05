<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113박명재</title>
</head>
<body>
	<pre>
		복습 기본 예제
		버튼을 한개 만들고 버튼 클릭할때마다
		btn 값을 1씩 증가하다가 5가 되었을 때 5번 클릭 성공! 메시지 출력 후 btn = 0으로 바꾸기.
	</pre>
	
	<%
		int btn = 0;
		//url에 btn 존재하면 : 뜻)request.getParameter("btn")!=null
		if(request.getParameter("btn") != null) {
			btn = Integer.parseInt(request.getParameter("btn"));
		}else {
			 System.out.println("버튼 아직 클릭 한적 없음");
		}
		
		if(btn < 5) {
			
	%>
	<h2>버튼 : <%= btn %></h2>
	<button onclick="<% btn++; %> location.href='Ex00requestBTN.jsp?btn=<%= btn %>'"> 클릭 </button>
	
	<%
		} else {
			btn = 0;
	%>
	<h2>5번 클릭 성공! 버튼 : <%= btn %>
		<button onclick="<% btn++; %> location.href='Ex00requestBTN.jsp?btn=<%= btn %>'"> 클릭 </button> 
	</h2>
	
	<% } %>
</body>
</html>