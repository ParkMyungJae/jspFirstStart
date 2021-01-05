<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>배열 문제</title>
	</head>
	<body>
		<% int[] arr = new int[5]; %>
		
		<%--
			문제 1) 10부터 50까지 arr 배열에 저장
			정답 1) 10 20 30 40 50
		 --%>
		<%
			for(int i = 0; i < arr.length; i++){
				arr[i] = 10 * (i+1);
		%>
				<%= arr[i] %>
		<%
			}
		 %>
		<br />
		<%--
			문제 2) 4의 배수만 출력
			정답 2) 20 40
		 --%>
		 
		 <%
		 for(int j = 0; j < arr.length; j++) {
			 if(arr[j] % 4 == 0) {
				 out.print(arr[j] + " ");
			 }
		 }
		 %>
		 
		 <br>
		 
		<%--
			문제 3) 4의 배수의 합 출력
			정답 3) 60
		 --%>
		 
		  <%
		  int hap = 0;
		  int cnt = 0;
		  
		 for(int k = 0; k < arr.length; k++) {
			 if(arr[k] % 4 == 0) {
				 hap += arr[k];
				 cnt++;
			 }
		 }
		 
		 out.print(hap);
		 %>
		 
		 <br>
		 
		<%--
			문제 4) 4의 배수의 개수 출력
			정답 4) 2
		 --%>
		 
		 <%= cnt %>
		 
		<%--
			문제 5) 짝수의 개수 출력
			정답 5) 5
		 --%>
		 
		 <br>
		 
		   <%
		  int twoCnt = 0;
		  
		 for(int k = 0; k < arr.length; k++) {
			 if(arr[k] % 2 == 0) {
				 twoCnt++;
			 }
		 }
		 
		 out.print(twoCnt);
		 %>
		 
	</body>
</html>