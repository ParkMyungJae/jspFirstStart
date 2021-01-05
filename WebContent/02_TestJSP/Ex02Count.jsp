<%@page import="test1.CountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
	<pre>
		클래스 기본 예제
		버튼을 한개 만들고 버튼 클릭할때마다
		숫자가 1씩 증가하다가 5가 되었을 때 메시지 출력 후 초기화 버튼이 나타남
	</pre>
	
	<%
	//객체 생성 - > 클래스이름 객채이름 = new 생성자 // 클래스이름 ();
	CountVO vo = new CountVO();
	int count = vo.getCount();
	if (count < 5) {
	%>
	<h2>카운트 횟수 <%= count %></h2>
	<button onclick="<% vo.addCount(); %> location.href='Ex02Count.jsp'">클릭</button>
	
	<%
	} else {
	%>
	<h2>5번 클릭 성공! count : <%= count %></h2>
	<button onclick="<% vo.reset(); %> location.href='Ex02Count.jsp'">다시시작</button>
	
	<% } %>
	
</body>
</html>