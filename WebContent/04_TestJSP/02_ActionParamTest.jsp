<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 20113 박명재 */
	String userId = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String loginCheck = request.getParameter("loginCheck");
	if(loginCheck.equals("guest")) {
%>
	<jsp:forward page="02_ActionParamUser.jsp" >
		<jsp:param value="guest" name="userName" />
	</jsp:forward>

<%
	} else {
%>
	<jsp:forward page="02_ActionParamAdmin.jsp" >
		<jsp:param value="admin" name="userName" />
	</jsp:forward>
	
<% } %>