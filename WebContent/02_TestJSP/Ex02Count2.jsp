<%@page import="test1.Count2VO"%>
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
		클래스 기본 예제
		버튼을 한개 만들고 버튼 클릭할때마다
		숫자가 1씩 증가하다가 5가 되었을 때 메시지 출력 후 초기화 버튼이 나타남
	</pre>

	<%// private 막아놔서 불가능
	//Count2VO vo = new Count2VO();
	//vo.addCount(); 메서드 호출 불가능
	
	//Count2VO.getInstance();
	// - > 전역 클래스 객체변수 instance의 주소를 받아온다
	 Count2VO vo = Count2VO.getInstance();
      int count = vo.getCount();
      if (count < 5) {
   %>
   <h2>
      카운트 횟수
      <%= count %></h2>
   <button onclick="<% vo.setCount(); %> location.href='Ex02Count2.jsp'">클릭</button>
   <%
      } else {
   %>
   <h2>
      5번 클릭성공 ! count :
      <%= count %></h2>
   <button onclick="<% vo.reset(); %> location.href='Ex02Count2.jsp'">다시시작</button>
   <%
      }
   %>
	
</body>
</html>