<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="bs4.jsp" %> --%>
<%@ include file="../../include/bs4.jsp" %>
<!-- 절대경로, %안에 %를 다시사용할 수 없음 -->
<%-- <%@ include file="<%=request.getContextPath()%>/include/bs4.jsp" %> --%>
<%-- <jsp:include page="<%=request.getContextPath()%>/include/bs4.jsp" ></jsp:include> --%>
<!-- <div class="container"> -->
<div style="height:140px; text-align:center">
	<p><br/></p>
	<a href="home.jsp" class="btn btn-outline-primary">Home</a>
	<a href="guest.jsp" class="btn btn-outline-primary">Guest</a>
	<a href="board.jsp" class="btn btn-outline-primary">Board</a>
	<a href="pds.jsp" class="btn btn-outline-primary">Pds</a>
</div>