<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body bgcolor="gray">
<% request.setCharacterEncoding("utf-8"); %>
<h3>사용자로 로그인 성공</h3>
<%= request.getParameter("userName") %>
[<%= request.getParameter("userID") %>]님 환영합니다.
</body>
</html>