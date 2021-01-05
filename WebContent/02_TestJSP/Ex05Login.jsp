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
 # 로그인
 1. 사용자로부터 id와 pw를 입력받는다.
 2. memberVO 클래스를 만들어서  String dbID , int dbPw ,String name을 만든다 
 3. memberVO 객체 생성시에 dbId = "hong" dbPw = 1111 name="HongGilDong" 으로 값 초기화시켜준다
 4. 사용자가 입력한 id와 pw값이 Ex05LoginPro.jsp 로 넘어간다 
 5. Ex05LoginPro.jsp 에서 입력받은 id와 pw값과  MemberVO객체의 초기 데이타값을 비교해 로그인 처리를 진행한다. 
 6. 로그인이 일치하면 로그인 form 은 보이지 않고 
          로그인 성공  메시지를 띄우고 login 페이지로 넘어와서 입력받은 name님이 로그인 하셨습니다 라는 문구를 보여준다.
 7. 불일치하면
  예) 아이디 존재 하지 않음  or 비밀번호 불일치 alert 창 만들어서 다시 Ex05Login 페이지로 간다
</pre>

<%
if(session.getAttribute("check") != null && (int)session.getAttribute("check") == 1) {
%>
	<h3><%= (String) session.getAttribute("name") %>님이 로그인 하셨습니다.</h3>
	<input type="button" value="로그아웃하기" onclick="<% session.invalidate();%> location.href = 'Ex05Login.jsp';">

<%
} else {
%>

	<h1>로그인</h1>

	<form action="Ex05LoginPro.jsp" method="POST">
		<!-- 아래는 사용자 아이디 로그인 입력 받는 부분 -->
		<label>아이디 : </label> <input type="text" name="id" required="required">
		<label>비밀번호 : </label> <input type="password" name="pw" required="required">
		<input type="submit" value="로그인">
	</form>

<% } %>
</body>
</html>