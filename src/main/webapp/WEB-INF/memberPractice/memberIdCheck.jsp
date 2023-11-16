<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberIdCheck.jsp</title>
	<jsp:include page="/includePractice/bs4.jsp"/>
	<script>
		'use strict';
		
		function sendCheck() {
			opener.window.document.myform.mid.value = '${mid}';
			opener.window.document.myform.pwd.focus();
			window.close();
		}
		
		function idCheck() {
			let mid = childForm.mid.value;
			
			if(mid.trim() == "") {
				alert("아이디를 입력하세요");
				childForm.mid.focus();
			}
			else {
				childForm.submit();
			}
		}
		
	</script>
</head>
<body>
	<jsp:include page="/includePractice/header.jsp" />
	<p><br/></p>
	<div class="container">
	<h3>아이디 체크폼</h3>
	<c:if test="${res == 1}">
		<h4><font color="blue"><b>${mid}</b></font>아이디는 사용 가능합니다.</h4>
		<p><input type="button" value="창닫기" onclick="sendCheck()"/></p>
	</c:if>
	<c:if test="${res != 1}">
	<h4><font color="blue"><b>${mid}</b></font>아이디는 이미 사용중인 아이디입니다.</h4>
	<form name="childForm" method="post" action="memberIdCheck.pMem">
		<p>
			<input type="text" name="mid"/>
			<input type="button" value="아이디재검색" onclick="idCheck()"/>
		</p>
	</form>
	</c:if>
	</div>
	<p><br/></p>
	<jsp:include page="/includePractice/footer.jsp" />
</body>
</html>