<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>post방식으로 파라미터 보내기</title>
	</head>
	<body>
		<h2>전화번호를 입력하세요.</h2>
		<form method="post" action="ex09Pro.jsp">
			<select name="local">
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="강원">강원</option>
			</select>
			-
			<input type="text" name="tel1" />
			-
			<input type="text" name="tel2" />
			<input type="submit" value="입력완료" />
			
			<br>
			
			<input type="radio" name="gender" value="남"> 남
			<input type="radio" name="gender" value="여"> 여
			
			<br>
			
			<input type="checkbox" name="hobby" value="운동하기"> 운동하기
			<input type="checkbox" name="hobby" value="노래부르기"> 노래부르기
			<input type="checkbox" name="hobby" value="넥플레스 시청"> 넥플레스 시청
			<input type="checkbox" name="hobby" value="유튜브 시청"> 유튜브 시청
		</form>
	</body>
</html>