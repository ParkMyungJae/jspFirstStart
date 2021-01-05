<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arrayList로 구현하는 구구단 게임</title>
</head>
<body>
<%
	Random ran = new Random();
	//int 정수타입 변수를 메모리 방에 넣어주는 역할, + = / * 기본타입변수는 연산자 사용가능한데
	//Integer 정수의 클래스 타입 -> 안에 있는 int를 사용하는 기능구현을 사용할 수 있다.
	ArrayList<Integer> list = new ArrayList<Integer>(); // heap 메모리에서 생성되는구나
	//개발자들이 만든 클래스 -> .(점) 찍어서 안에 들어있는 기능구현 메서드들을 사용(접근)할 수 있다.
	//Integer : 클래스  // int
	//arrayList를 사용하는 이유 : 
		//배열 double [] list = new double[5] // 배열의 길이가 5인데 이게 4가 되거나 6이 되거나 길이변동이 불가능
			//배열 한계 - 한번크기를 선언하면 다시 크기조정을 할 수가 없다!!
	//arrList 구조 : ArrayList,자료형 타입 - > 클래스 > 리스트이름 = new ArrayList<자료형 타입>();
	//arrList 구조 : ArrayList,자료형 타입 - > 클래스 > 리스트이름 = new ArrayList();
	//배열과 어레이리스트의 차이
	//배열은 메모리 크기가 조절이 불가능하다.
	//배열의 크기는 배열이름.length
	//어레이리스트 어레이리스트 이름.size() // 어레이리스트 클래스 안에 있는 메서드 // 어레이리스트의 길이를 리턴한다 - > ir
	//arrlist는 크기변동이 자유롭다.
	//배열 어레이리스트의 공통점
	//heap 메모리에서 생성되는 주소변수( 참조 변수 )
	//처음에 선선한 그 타입만 올 수 있다.
	//방번호(index)가 0부터 시작한다.
	//arraylist의 특징
	//추가
	
%>

<pre>
ArrayList 개념 vs Array 비교 (차이점) 공통점
테이블 구조

ArrayList 특징
추가
list.add(answer); // 순차적으로 값이 추가된다 0 1 2 3 4 // 메모리 크기는 마지막 방번호 + 1 // 값 추가 : 마지막에
//list[0] = answer;
list.add(10);
//list.add(1, answer);
//list.size(); // 어레이 리스트의 크기를 알 수 있다.
list[1]
list.get(1); // get (방번호 index) 값을 불러오는 메서드
list.remove(1); // remove(방번호 index) 해당 방번호의 값을 삭제하는 메서드 list[1] = 0;
list.clear(); // 모든 값을 삭제

table의 형태
<table>
	<tr>
		<th></th>
		<td></td>
	</tr>
	tr -> 줄(row)
	td -> 칸(column) == th 글자 크기가 굵은 것 테이블의 윗칸 - 제목
	td를 tr 안에서 반드시 생성해줘야 한다.	
</table>

</pre>

	<h2>구구단 문제</h2>
	<form action="guguPro01.jsp" method="GET">
		<table border="1">
			<tr>
				<td>번호</td> <td>문제</td> <td>정답</td>
			</tr>
			
			<%
				for(int i = 0; i < 5; i++) {
					//랜덤함수 범위 (갯수) + 초기값
					int x = ran.nextInt(8) + 2; //2 - 9 (8개)
					int y = ran.nextInt(9) + 1; // 1 - 9 (9개)
					int answer = x * y;
					
					list.add(answer); // for문을 5번 돌리니깐 list에 값이 총 5개가 추가가 된다.
			%>
			<tr>
				<td><%= i + 1 %></td>
				<td><%= x %> * <%= y %></td>
				<td><input type = "text" name="<%= i + 1 %>"></td>
			</tr>
			
			<% } %>
			
			<tr>
				<td colspan="3"><input type="submit" value="정답제출"></td>
			</tr>
		</table>
	</form>
	<%
	session.setAttribute("list", list);
	//어레이리스트도 세션으로 만들어줄 수 있다.
	//참조변수 : session object(최상위 타입) 타입이기 때문에 모든 자료형 타입을 세션에 담을 수 있다.
	%>
</body>
</html>