<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String pageName = request.getParameter("pageName");
	pageName += ".jsp";
	//test1
	//pageName = pageName + ".jsp";
%>
이곳은 includeTestPro.jsp 입니다. <br>

<hr>
<jsp:include page="<%= pageName %>" />

이곳은 includeTestPro.jsp의 나머지 내용입니다.