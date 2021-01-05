<%@page import="test.UserVO"%>
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
	String name = request.getParameter("name");
	int grade = Integer.parseInt(request.getParameter("grade"));

	UserDAO instance = UserDAO.getInstance();

	int status = instance.CheckLogin(name, grade);
	if (status == 1) {
		instance.addUser(name, grade);
	%>

	<h3>
		사용자
		<%=name%>[<%=grade%>] 님이 등록되었습니다.
	</h3>
	<a href="04_exam.jsp">문제 풀기로 이동합니다.</a>

	<%
		} else if (status == 0) {
	%>
	<h2>이미 등록된 사용자입니다.</h2>
	<hr>
	<button onclick="location.href = '01_index.jsp'">홈으로</button>
	<%
		} else {
	%>
	<h2>장애가 발생하였습니다.</h2>
	<hr>
	<button onclick="location.href = '01_index.jsp'">홈으로</button>
	<%
		}
	%>
</body>
</html>