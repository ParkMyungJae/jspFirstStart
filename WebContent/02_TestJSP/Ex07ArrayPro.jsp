<%@page import="test.ArrayDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20113 박명재</title>
</head>
<body>
<%
ArrayDAO instance = ArrayDAO.getInstance();

if(request.getParameter("btn") != null) {
	int btn = Integer.parseInt(request.getParameter("btn"));
	
	//각 버튼에 따라 맞는 값을 가져오기.
	if(btn == 1) {
		//추가
		int add = Integer.parseInt(request.getParameter("add"));
		
		if(instance.getCount() > 4) {
			out.println("<script>alert('더이상 추가할 수 없습니다.'); location.href='Ex07Array.jsp;'</script>");
		}else {
			if(instance.sameArray(add) == 0) {
				instance.addArray(add);
				out.println("<script>alert('해당 값을 추가하였습니다.'); location.href='Ex07Array.jsp;'</script>");	
			}else {
				out.println("<script>alert('값이 중복이므로 등록이 불가능합니다.'); location.href='Ex07Array.jsp;'</script>");
			}
		}
		
	}else if(btn == 2) {
		//삭제
		int delete = Integer.parseInt(request.getParameter("delete"));
		
		if(instance.getCount() == 0) {
			out.println("<script>alert('더이상 삭제할 값이 없습니다.'); location.href='Ex07Array.jsp;'</script>");
		}else {
			if(instance.removeArray(delete) == -1) {
				out.println("<script>alert('해당 값을 찾을 수 없습니다.'); location.href='Ex07Array.jsp;'</script>");	
			}else {
				out.println("<script>alert('해당 값을 삭제하였습니다.'); location.href='Ex07Array.jsp;'</script>");
			}
		}
	}else if(btn == 3) {
		//삽입
		int insertIndex = Integer.parseInt(request.getParameter("insertIndex"));
		int insert = Integer.parseInt(request.getParameter("insert"));
		
		if(instance.getCount() > 4) {
			out.println("<script>alert('더이상 삽입할 수 없습니다.'); location.href='Ex07Array.jsp;'</script>");
		}
		
		if(instance.getCount() < insertIndex || insertIndex < 0) {
			out.println("<script>alert('해당 위치에는 삽입할 수 없습니다.'); location.href='Ex07Array.jsp;'</script>");
		}else {
			if(instance.sameArray(insert) == 0) {
				instance.insertArray(insertIndex, insert);
				out.println("<script>alert('해당 인덱스에 값이 삽입되었습니다.'); location.href='Ex07Array.jsp;'</script>");
			}else {
				out.println("<script>alert('값이 중복이므로 등록이 불가능합니다.'); location.href='Ex07Array.jsp;'</script>");
			}
		}
		
	}
	
}else {
	out.println("<script>alert('에러발생'); location.href='Ex07Array.jsp;'</script>");
}
%>
</body>
</html>