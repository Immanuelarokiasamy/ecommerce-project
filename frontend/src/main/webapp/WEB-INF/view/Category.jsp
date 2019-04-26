<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ManageCategoryPage</title>
</head>
<body>
<h3>Add Category</h3>
<form method="post" action="addCategory">
<table>
<tr>
<td>Category Id</td>
<td><input name="catid"/></td>
</tr>
<tr>
<td>Category Name</td>
<td><input name="catname"/></td>
</tr>
<tr>
<td>Category Description</td>
<td><input name="catdesc"/></td>
</tr>
<tr>
<td colspan = "2">
<input type="submit" value="ADD"/>
</td>
</tr>
</table>
<table border=1>
<tr>
<td>Category ID</td>
<td>Category Name</td>
<td>Category Desc</td>
<td>Operation</td>
</tr>
<c:forEach items="${listCategories}" var="category">
<tr>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.categoryDesc}</td>
<td>
<a href="<c:url value="/updateCategory/${category.categoryId}"/>">UPDATE</a>/
<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">DELETE</a>
</td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>