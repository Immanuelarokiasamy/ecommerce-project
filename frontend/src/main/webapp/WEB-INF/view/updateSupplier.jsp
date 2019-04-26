<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateSupplierPage</title>
</head>
<body>
<h3>Update Supplier</h3>
<form method="post" action="updateSupplierDB">
<table>
<tr>
<td>Supplier Id</td>
<td><input name="supid" value="${supplier.supplierId}"/></td>
</tr>
<tr>
<td>Supplier Name</td>
<td><input name="supname" value="${supplier.supplierName}"/></td>
</tr>
<tr>
<td>Supplier Description</td>
<td><input name="supaddr" value="${supplier.supplierAddress}"/></td>
</tr>
<tr>
<td colspan = "2">
<input type="submit" value="UPDATE"/>
</td>
</tr>
</table>
<table border=1>
<tr>
<td>Supplier ID</td>
<td>Supplier Name</td>
<td>Supplier Address</td>
<td>Operation</td>
</tr>
<c:forEach items="${listCategories}" var="category">
<tr>
<td>${supplier.supplierId}</td>
<td>${supplier.supplierName}</td>
<td>${supplier.supplierAddress}</td>
<td>
<a href="<c:url value="/updateCategory/${supplier.supplierId}"/>">UPDATE</a>/
<a href="<c:url value="/deleteCategory/${supplier.supplierId}"/>">DELETE</a>
</td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>