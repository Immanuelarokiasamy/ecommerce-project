<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstarp.min.js"></script>
<style>
 #hom { color:black; }
#link a:hover { color:white; background-color:#ee740a; }
</style>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #ff851b;">
  <div class="container-fluid" id="link">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" id="hom">EGaming</a>
    </div>
   <ul class="nav navbar-nav">
      <li><a href="<c:url value="/"/>" id="hom">Home</a></li>
      <c:if test="${username=='Admin'}">
      <li><a href="<c:url value="/Category"/>" id="hom">Manage Category</a></li>
      <li><a href="<c:url value="/Supplier"/>" id="hom">Manage Supplier</a></li>
      <li><a href="<c:url value="/Product"/>" id="hom">Manage Product</a></li>
      </c:if>
      <li><a href="<c:url value="/ProductDisplay"/>" id="hom">Product</a></li>
      <c:if test="${not empty SuccessMessage}">
      <li><a href="<c:url value="/Cart"/>" id="hom">Cart</a></li>
      </c:if>
    </ul> 
    <ul class="nav navbar-nav navbar-right">
        <c:if test="${empty SuccessMessage}">
        <li><a href="<c:url value="/SignUp"/>" id="hom"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<c:url value="/login"/>" id="hom"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </c:if>
        <c:if test="${not empty SuccessMessage}">
        <li>Hi ${username}</li>
        <li><a href="<c:url value="/perform_logout"/>" id="hom"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </c:if>
      </ul> 
</div>
</nav>
</body>
</html>