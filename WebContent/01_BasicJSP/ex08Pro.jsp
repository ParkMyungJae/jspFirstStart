<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get방식으로 파라미터 받아서 처리하기</title>
</head>
<body>
	<%
		// post 방식에 관한 한글처리
	request.setCharacterEncoding("UTF-8");
	%>

	<%
		String name = request.getParameter("name");

	int age = Integer.parseInt(request.getParameter("age"));
	if (age >= 20) {
	%>
	<h3>
		<%=name%>님의 나이는 20세 이상입니다.
	</h3>
	<%
		} else {
	%>
	<h3>
		<%=name%>님은 미성년자입니다.
	</h3>
	<%
		}
	%>
</body>
</html>