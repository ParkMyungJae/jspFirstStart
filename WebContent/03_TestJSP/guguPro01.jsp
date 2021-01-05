<%@page import="java.util.ArrayList"%>
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
		ArrayList<Integer> answerList = (ArrayList<Integer>) session.getAttribute("list");

	for (int i = 0; i < answerList.size(); i++) {
		int myAnswer = Integer.parseInt(request.getParameter((i + 1) + ""));
		if (answerList.get(i) == myAnswer) {
	%>
	<h2>O</h2>
	<%
		} else {
	%>
	<h2>X</h2>
	<%
		}
	}
	%>

</body>
</html>