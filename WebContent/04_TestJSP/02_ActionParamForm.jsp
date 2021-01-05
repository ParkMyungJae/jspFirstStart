<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
<form action="02_ActionParamTest.jsp">
	아이디 : <input type="text" name="userID" value="박새로이"> <br>
	암&nbsp; 호 : <input type="password" name="userPwd" value="1234"> <br>
	<input type="radio" name="loginCheck" value="guest" checked="checked">사용자
	<input type="radio" name="loginCheck" value="admin">관리자<br>
	<input type="submit" value="로그인">
</form>
</body>
</html>