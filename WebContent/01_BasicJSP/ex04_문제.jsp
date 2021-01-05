<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿과 익스프레션 태그로 반복문 구현하기</title>
</head>
<body>
	<%--
			문제 1) 1부터 10까지 반복해 5~9 출력
			정답 1) 5, 6, 7, 8, 9
		 --%>
	<%
		for (int i = 1; i <= 10; i++) {
		if (5 <= i && i <= 9) {
	%>
	<%=i%>
	<%
		}
	}
	%>
	<br>
	<%--
			문제 2) 10부터 1까지 반복해 6~3 거꾸로 출력
			정답 2) 6, 5, 4, 3
		 --%>

	<%
		int reverse = 0;
	for (int k = 10; k >= 1; k--) {
		if (k <= 6 && k >= 4) {
			out.print(k + ", ");
		}

		if (k == 3) {
			out.print(k);
		}
	}
	%>

	<%--
			문제 3) 1부터 10까지 반복해 짝수만 출력
			정답 3) 2, 4, 6, 8, 10
		 --%>
	<br>

	<%
		for (int a = 1; a <= 10; a++) {
		if (a % 2 == 0) {
			out.print(a + " ");
		}
	}
	%>


	<%--
		 	문제 4) 1부터 5까지의 합 출력
		 	정답 4) 15
		  --%>

	<br>

	<%
		out.print("1부터 5까지의 합 출력 : ");
	int hap = 0;
	for (int j = 1; j <= 5; j++) {
		hap += j;
	}
	out.print(hap);
	%>

	<br>

	<%--
		 	문제 5) 1부터 10까지 반복해 3미만 7이상만 출력
		 	정답 5) 1, 2, 7, 8, 9, 10
		  --%>

	<%
		int num5Hap = 0;
	int num5Cnt = 0;

	for (int t = 1; t <= 10; t++) {
		if (t < 3 || t >= 7) {
			out.print(t + " ");
			num5Hap += t;
			num5Cnt++;
		}
	}
	%>
	<br>

	<%--
		 	문제 6) 문제 5번의 조건에 맞는 수들의 합 출력
		 	정답 6) 37
		  --%>

	<%=num5Hap%>

	<br>

	<%--
		 	문제 7) 문제 5번의 조건에 맞는 수들의 개수 출력
		 	정답 7) 6
		  --%>

	<%=num5Cnt%>

	<br>

	<%--
		 	문제 8) 구구단 세로로 출력
		  --%>

	<%
		for (int i = 2; i <= 9; i++) {
		for (int j = 1; j <= 9; j++) {
			out.print(i + " X " + j + " = " + i * j);
	%>
	<br>
	<%
		}
	%>
	<br>
	<%
		}
	%>
	
</body>
</html>