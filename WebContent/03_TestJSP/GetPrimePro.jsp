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
 # 소수찾기[1단계]
 1. 소수란, 1과 자기자신으로만 나눠지는 수
 2. 예) 2, 3, 5, 7, 11, 13, ..
 3. 힌트
 1) 해당 숫자를 1부터 자기자신까지 나눈다.
 2) 나머지가 0일 때마다 카운트를 센다.
 3) 그 카운트 값이 2이면 소수이다.
 4) 6/1 6/2 6/3 6/4 6/5 6/6	cnt = 4이므로	소수X

정수 한 개를 입력받아, 해당 숫자가 소수인지 아닌지 판별한다.
 	</pre>

	<%
		int num = Integer.parseInt(request.getParameter("num"));

		boolean status = false;

		int cnt = 0;

		for (int i = 1; i <= num; i++) {
			if (num % i == 0) {
				cnt++;
				out.print(num + "/" + i + " ");
			}
		}
		
		if (cnt == 2) status = true;

		if (status == true) {
			out.println("<h2>결과는 소수이다. 나눠진 횟수 " + cnt +"</h2>");
		} else {
			out.println("<h2>결과는 소수가 아니다. 나눠진 횟수 " + cnt + "</h2>");
		}
	%>
	
	<button onclick="location.href='GetPrime.jsp'">홈으로</button>
</body>
</html>