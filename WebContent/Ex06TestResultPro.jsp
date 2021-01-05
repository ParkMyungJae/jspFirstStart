<%@page import="test.TestVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.TestDAO"%>
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
		TestDAO instance = TestDAO.getInstance();
		ArrayList<TestVO> list = instance.list;

		String name = list.get(0).getName();
		int regNum = list.get(0).getRegNum();
		int comNum = list.get(0).getComNum();
		int excelNum = list.get(0).getExcelNum();

		String userName = request.getParameter("userName");
		int userNum = Integer.parseInt(request.getParameter("userNum"));

		int status = 0;
		status = instance.checkResult(comNum, excelNum);

		if (name.equals(userName)) {
			if (regNum == userNum) {
				if (status == 1) {
					/* 합격 */
	%>
	<div style="text-align: center">
		<h1><%=userName%>님(<%=userNum%>)의 결과입니다.</h1>
		<h1 style="color: blue">합격을 축하합니다.</h1>
	</div>
	<%
				} else if(status == -1) {
					/* 불합격 */
	%>
	<div style="text-align: center">
		<h1><%=userName%>님(<%=userNum%>)의 결과입니다.</h1>
		<h1 style="color: red">불합격입니다.</h1>
	</div>
	<%
				} else {
	%>
	<h1 style="color: red">알 수 없는 에러가 발생하였습니다.</h1>
	<%
				}
			} else {
				/* 수험번호 불일치 */
	%>
	<script>
		alert("수험번호 불일치");
		location.href="Ex06TestResult.jsp";
	</script>
	<%
			}
		} else {
			/* 수험자 이름 불일치 */
	%>
	<script>
		alert("수험자 이름 불일치");
		location.href="Ex06TestResult.jsp";
	</script>
	<%
		}
	%>
</body>
</html>