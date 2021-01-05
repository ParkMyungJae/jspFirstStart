<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
<!-- 입력받은 데이터와 기존 데이터를 비교해 로그인 처리를 진행 -->
<!-- 파라미터 가져오기 (4개) 비교하기 위한 변수값에 저장  -->
<!-- 비교(dbId == id && dbPw == pw)  -->

<% 
String dbId = request.getParameter("dbId");
int dbPw = Integer.parseInt(request.getParameter("dbPw"));

String myId = request.getParameter("id");
int myPw = Integer.parseInt(request.getParameter("pw"));
String result = "";
int check = -1;

if(dbId.equals(myId)) {
	if(dbPw == myPw) check = 1;
	else check = 2;
} else check = -1;

if(check == 1) result = "로그인 성공";
else if (check == 2) result = "비밀번호 불일치";
else result = "로그인 실패 : 아이디가 존재하지 않습니다.";
%>

<h2><%= result %></h2>
	
</body>
</html>