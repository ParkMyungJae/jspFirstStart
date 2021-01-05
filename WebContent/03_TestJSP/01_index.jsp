<%@page import="sun.security.jca.GetInstance.Instance"%>
<%@page import="test.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	UserDAO instance = UserDAO.getInstance();

	if(request.getParameter("number1") != null) {
		int num1 = Integer.parseInt(request.getParameter("number1"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		int num3 = Integer.parseInt(request.getParameter("number3"));

		instance.checkResult(num1, num2, num3, instance.getAUser());
	}
%>
<h1>응용프로그래밍 개발 테스트</h1>
<h3> - 사용자 등록 후 응시하시오. -</h3>
<button onclick="location.href='01_index.jsp?btn=1'">사용자 정보 등록</button>
<button onclick="location.href='01_index.jsp?btn=2'">사용자 점수 보기</button>
<button onclick="location.href='06_printResult.jsp'">사용자 전체 보기</button>
<hr>
<%
	if(request.getParameter("btn") != null) {
		int btn = Integer.parseInt(request.getParameter("btn"));
		if(btn == 1) {
%>
<h3>사용자 등록 화면</h3>
<form action="03_registerPro.jsp" method="POST">
	이름: <input type="text" name="name" required="required"><br>
	학번: <input type="text" name="grade" required="required" placeholder="예)4자리"><br>
	<input type="submit" value="등록">
</form>
<%
	} else if(btn == 2) {
%>
<h3>결과 확인 화면</h3>
<form action="02_userList.jsp" method="POST">
	등록한 이름: <input type="text" name="name" required="required"><br>
	등록한 학번: <input type="text" name="grade" required="required" placeholder="예)4자리"><br><br><br>
	<input type="submit" value="결과확인">
</form>
<% } } %>
</body>
</html>