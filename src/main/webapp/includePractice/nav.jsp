<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="${ctp}/indexPractice.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${ctp}/guestPractice/GuestList">Guest</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${ctp}/memberLogin.pMem">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${ctp}/memberJoin.pMem">Join</a>
      </li>    
    </ul>
  </div>  
</nav>