<%@page import="test.MemberVO"%>
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
/* 파라미터 가져오기  */
String myId = request.getParameter("id");
int myPw = Integer.parseInt(request.getParameter("pw"));

MemberVO vo = MemberVO.getInstance();
String dbId = vo.getDbId();
int dbPw = vo.getDbPw();
String name = vo.getName();

int check = -1;
//myId와 dbId가 일치하면 비밀번호 비교 일치하면 check = 1
//						   불일치면 check = 2
//myId와 dbId가 불일치 check = -1 그대로

if(dbId.equals(myId)) {
	if(dbPw == myPw) check = 1;
	else check = 2;
} else check = -1;

//세션에 로그인 check 값과 해당 name을 저장한다.
session.setAttribute("check", check);
session.setAttribute("name", name);

String result;

if(check == 1) result = "로그인 성공";
else if (check == 2) result = "비밀번호 불일치";
else result = "로그인 실패 : 아이디가 존재하지 않습니다.";

out.println("<script> alert('" + result + "'); location.href = 'Ex05Login.jsp'; </script>");
%>
	
</body>
</html>