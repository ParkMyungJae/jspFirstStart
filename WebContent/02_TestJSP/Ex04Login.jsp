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
String dbId = "hong";
String dbPw = "1111";
%>

<pre>
	# 로그인
	1. 사용자로부터 id와 pw를 입력받는다.
	2. 사용자가 입력한 id와 pw 그리고 dbId와 dbPw(hidden 값으로)의 값 모두를 Ex04LoginPro.jsp에 값 전달한다.
	3. Ex04LoginPro.jsp 에서 입력받은 데이터와 기존 데이터를 비교해 로그인 처리를 진행한다.
	 예) 로그인 성공 or 로그인 실패 or 비밀번호 불일치
	 id = hong 입력시 pw 확인, id = hoho 입력시 로그인 실패
	 pw = 1111 입력시 로그인 성공, pw = 2222 입력시 비밀번호 불일치
</pre>

<h1>로그인</h1>

<form action="Ex04LoginPro.jsp" method="GET">
	<!-- 아래는 사용자 아이디 로그인 입력 받는 부분 -->
	<label>아이디 : </label> <input type="text" name="id" required="required"> 
	<label>비밀번호 : </label> <input type="password" name="pw" required="required">
	
	<!-- 아래는 dbId, dbPw 데이터 hidden 값  -->
	<input type="hidden" value="<%= dbId %>" name="dbId">
	<input type="hidden" value="<%= dbPw %>" name="dbPw">
	
	<input type="submit" value="로그인">
</form>

</body>
</html>