<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ManageSupplierPage</title>
</head>
<body>
<h3>Add Supplier</h3>
<form method="post" action="addSupplier">
<table>
<tr>
<td>Supplier Id</td>
<td><input name="supid"/></td>
</tr>
<tr>
<td>Supplier Name</td>
<td><input name="supname"/></td>
</tr>
<tr>
<td>Supplier Address</td>
<td><input name="supaddr"/></td>
</tr>
<tr>
<td colspan = "2">
<input type="submit" value="ADD"/>
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
<c:forEach items="${listSuppliers}" var="supplier">
<tr>
<td>${supplier.supplierId}</td>
<td>${supplier.supplierName}</td>
<td>${supplier.supplierAddress}</td>
<td>
<a href="<c:url value="/updateSupplier/${supplier.supplierId}"/>">UPDATE</a>/
<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>">DELETE</a>
</td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>