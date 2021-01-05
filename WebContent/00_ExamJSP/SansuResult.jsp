<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2개의 정수 합 결과화면</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int result = Integer.parseInt(request.getParameter("result"));

	int sum = num1 + num2;

	if (sum == result) {
		//정답
	%>
	<p>문제 : <%=num1%> + <%=num2%></p> <br>
	<p>당신의 입력한 값이 <%=result%>이며, 정답입니다.</p>


	<%
		} else { //오답
	%>
	<p>문제 : <%=num1%> + <%=num2%></p> <br>
	
	<script type="text/javascript">
		alert("<%=result%>는 오답입니다. 다시 생각해보세요.");
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>