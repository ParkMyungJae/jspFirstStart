<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113박명재</title>
</head>
<body>
	<pre>
	Test 페이지
	</pre>
	
	<%
		int sBtn = 0;
		//int btn = Integer.parseInt(request.getParameter("btn"));
		if(session.getAttribute("sBtn") != null) {
			sBtn = (int) session.getAttribute("sBtn");
		%>
		<h2> 세션버튼 <%= sBtn %></h2>
		<%
		} else {
		out.println("<h2> 세션이 존재하지 않음 </h2>");	
		}
		%>
		
		<button onclick="location.href = 'Ex01SessionBTN.jsp'">Ex01SessionBTN.jsp로 이동하기</button>

</body>
</html>