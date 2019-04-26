<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateCategoryPage</title>
</head>
<body>
<h3>Update Category</h3>
<form method="post" action="updateCategoryDB">
<table>
<tr>
<td>Category Id</td>
<td><input id="catid" name="catid" value="${category.categoryId}"/></td>
</tr>
<tr>
<td>Category Name</td>
<td><input id="catname" name="catname" value="${category.categoryName}"/></td>
</tr>
<tr>
<td>Category Description</td>
<td><input id="catdesc" name="catdesc" value="${category.categoryDesc}"/></td>
</tr>
<tr>
<td colspan = "2">
<input type="submit" value="UPDATE"/>
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