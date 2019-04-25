<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddCategoryPage</title>
</head>
<body>
<h3>Add a Category</h3>
<form:form method="post" action="addCategory" commandName="addCateg">
<table>
<tr>
<td><form:label path="catname"></form:label></td>
<td><form:input id="catname" path="catname"/></td>
</tr>
<tr>
<td><form:label path="catdesc"></form:label></td>
<td><form:input id="catdesc" path="catdesc"/></td>
</tr>
<tr>
<td colspan = "2">
<input type="submit" value="ADD"/>
</td>
</tr>
</table>
</form:form>
</body>
</html>