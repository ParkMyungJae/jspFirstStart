<%@page import="test.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
	<h2>학생 개인 성적 출력</h2>
	<button onclick="location.href='./01_index.jsp';">홈으로</button>
	<hr>
	
	<table border="1">
			<tr>
				<th>번호</th> <th>이름</th> <th>학번</th> <th>점수</th>
			</tr>
			
			
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
int grade = Integer.parseInt(request.getParameter("grade"));

UserDAO instance = UserDAO.getInstance();

int status = 0;

for(int i = 0; i < instance.getMaxNo(); i++) {
	if(instance.getAllList.get(i).getGrade() == grade && instance.getAllList.get(i).getName().equals(name)) {
		status = 1;
%>

			<tr>
				<td><%= instance.getAllList.get(i).getNo()%></td>
				<td><%= instance.getAllList.get(i).getName() %></td>
				<td><%= instance.getAllList.get(i).getGrade() %></td>
				<td><%= instance.getAllList.get(i).getJumsu() %></td>
			</tr>
			
<%
	}	
}

if(status == 0) {
	out.println("<script>alert('이름 또는 학번이 올바르지 않습니다.'); location.href = '01_index.jsp';</script>");
	return;
}

%>	
	</table>
</body>
</html>