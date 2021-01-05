<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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

	<h2>학생목록 조회</h2>
	<button onclick="location.href='./01_index.jsp';">홈으로</button>
	<hr>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>학번</th>
			<th>점수</th>
		</tr>

		<%
		request.setCharacterEncoding("UTF-8");
			UserDAO instance = UserDAO.getInstance();

		for (int i = 0; i < instance.getMaxNo(); i++) {
			int no = instance.getAllList.get(i).getNo();
			String name = instance.getAllList.get(i).getName();
			int grade = instance.getAllList.get(i).getGrade();
			int jumsu = instance.getAllList.get(i).getJumsu();
		%>

		<tr>
			<td><%= no %></td>
			<td><%= name %></td>
			<td><%= grade %></td>
			<td><%= jumsu %></td>
		</tr>

		<%
			}
		%>
	</table>
</body>
</html>