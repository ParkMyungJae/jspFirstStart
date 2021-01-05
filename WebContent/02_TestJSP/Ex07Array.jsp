<%@page import="test.ArrayDAO"%>
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
ArrayDAO instance = ArrayDAO.getInstance();

if(instance.getCount() == 5) {
%>
	<input type="button" value="배열 초기화" onclick="<% instance.resetArray(); %> location.href='Ex07Array.jsp?btn=1';">
<%
return;
}
%>
	<pre>
	# 배열 컨트롤러 [1단계]
	5개의 정수를 저장할 수 있는 배열 arr와 arr에 저장된 값의 갯수인 count를 이용하여 배열컨트롤러를 구현한다.
	* 배열의 길이인 5개 값이 모두 추가 또는 삽입된 경우 배열 초기화 버튼 클릭 후 다시 메뉴화면으로 이동 가기
	1) 추가 : 추가할 값을 입력받아 배열 arr에 추가한다. count를 1 증가한다.
			성공하면 "해당 값을 추가하였습니다." alert로 출력
	2) 삭제 : 삭제할 값을 입력받아 배열 arr에서 찾아서 삭제한다. 값이 있으면 "해당 값을 삭제하였습니다." alert 로 출력
			값이 없으면 "해당 값을 찾을 수 없습니다." alert 로 출력
	* 순서대로 삽입되는 경우 값 삽입 구현가능하나, 인덱스를 건너뛰는 경우 "해당 위치에는 값 삽입이 불가능합니다. "alert 로 출력
	3) 삽입 : 삽입할 위치인 인덱스와 값을 입력받아 배열 arr에 삽입한다.
			성공하면 "해당 인덱스에 값이 삽입되었습니다." alert로 출력
	</pre>
	
	<input type="button" value="추가" onclick="location.href='Ex07Array.jsp?btn=1';">
	<input type="button" value="삭제" onclick="location.href='Ex07Array.jsp?btn=2';">
	<input type="button" value="삽입" onclick="location.href='Ex07Array.jsp?btn=3';">
	
	<%
	if(request.getParameter("btn") != null) {
		int btn = Integer.parseInt(request.getParameter("btn"));
		
		if(btn == 1) {
	%>
	<br>
	
	<form action="Ex07ArrayPro.jsp" method="POST">
		<input type="hidden" name="btn" value="1">
		<p>배열에 추가할 값을 입력하세요.</p>
		<input type="text" required="required" name="add">
		<input type="submit" value="추가">
	</form>
	<%
		}else if(btn == 2){
	%>
	<br>
	
	<h1>현재 arr 배열</h1>
	
	<h4>
	<%
		for(int i = 0; i < instance.getCount(); i++) {
	%>
		<%=instance.getArray()[i] + " " %>
	<%
		}
	%>
	</h4>
	
	<form action="Ex07ArrayPro.jsp" method="POST">
		<input type="hidden" name="btn" value="2">
		<p>배열에 삭제할 값을 입력하세요.</p>
		<input type="text" required="required" name="delete">
		<input type="submit" value="삭제">
	</form>
	<%
		}else if(btn == 3) {
	%>
	<br>
	
	<h1>현재 arr 배열</h1>
	<h4>
	<%
		for(int i = 0; i < instance.getCount(); i++) {
	%>
		<%=instance.getArray()[i] + " " %>
	<%
		}
	%>
	</h4>
	
	<form action="Ex07ArrayPro.jsp" method="POST">
		<input type="hidden" name="btn" value="3">
		<p>삽입할 배열의 인덱스 값을 입력하세요.</p>
		<input type="text" required="required" name="insertIndex">
	
		<p>삽입할 배열에 추가할 값을 입력하세요.</p>
		<input type="text" required="required" name="insert">
		<input type="submit" value="삽입">
	</form>
	<%
		}
	}
	%>
</body>
</html>