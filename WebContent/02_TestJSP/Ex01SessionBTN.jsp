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
	세션 기본 예제
	버튼을 한개 만들고 버튼 클릭할때마다
	btn 값을 1씩 증가하다가 5가 되었을 때 메시지 출력 후 클릭 버튼 사라짐
	</pre>
	
	<%
		int btn = 0;
	//세션 만들기 name, value 값
	/* session.setAttribute("sBtn", btn); */
	
	//session btn = 0;
	//세션 sBtn 값이 존재하지 않으면
	if(session.getAttribute("sBtn") == null) {
		System.out.println("<h2>세션이 존재하지 않습니다</h2>");	
	}else {
		//세션 받아오기
		btn = (int)session.getAttribute("sBtn");
	}
	
	if(btn < 5) {
	%>
	
	<h2>버튼 : <%= btn %></h2>
	<button onclick="<% btn++; session.setAttribute("sBtn", btn); %> location.href='Ex01SessionBTN.jsp?btn=<%= btn %>'"> 클릭 </button>
	
	
	<% } else if(session.getAttribute("sBtn") != null && btn >= 5) {
		btn = 0; 	
	%>
	
	<h2> 버튼 : <%= btn %> </h2>
	<h2>5번 클릭 성공!</h2>
	
	<%
		//세션 삭제
		session.invalidate();
	
		}
	%>
	
	<button onclick="location.href='Ex01test.jsp'"> test페이지 이동 </button>
</body>
</html>