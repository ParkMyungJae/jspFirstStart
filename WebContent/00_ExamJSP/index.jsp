<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<jsp:include page="header.jsp" />
<pre>
	# 배열 컨트롤러 [1단계]
	5개의 정수를 저장할 수 있는 배열 arr와 arr에 저장된 값의 갯수인 count를 이용하여 배열컨트롤러를 구현한다.
	* 배열의 길이인 5개 값이 모두 추가 또는 삽입된 경우 배열 초기화 버튼 클릭 후 다시 메뉴화면으로 이동 가기
	1) 추가 : 추가할 값을 입력받아 배열 arr에 추가한다. count를 1 증가한다.
			성공하면 "해당 값을 추가하였습니다." alert로 출력
	2) 삭제 : 삭제할 값을 입력받아 배열 arr에서 찾아서 삭제한다. 값이 있으면 "해당 값을 삭제하였습니다." alert 로 출력
			값이 없으면 "해당 값을 찾을 수 없습니다." alert 로 출력
	* 순서대로 삽입되는 경우 값 삽입 구현가능하나, 인덱스를 건너뛰는 경우 "해당 위치에는 값 삽입이 불가능합니다. "alert 로 출력
	3) 삽입 : 삽입할 위치인 인덱스와 값을 입력받아 배열 arr에 삽입한다.
			성공하면 "해당 인덱스에 값이 삽입되었습니다." alert로 출력
	</pre>
<%@ include file="footer.jsp"%>