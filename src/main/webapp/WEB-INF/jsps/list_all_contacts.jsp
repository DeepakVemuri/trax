<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List | Contacts</title>
</head>
<body>
	<h2>All Contacts</h2>
	<hr>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Lead Source</th>
			<th>Email</th>
			<th>Mobile Mobile</th>
			<th>Billing</th>
		</tr>
		<c:forEach items="${contacts}" var="contact">
			<tr>
				<td>${contact.id}</td>
				<td><a href="contactInfo?id=${contact.id}">${contact.firstName}</a></td>
				<td>${contact.lastName}</td>
				<td>${contact.leadSource}</td>
				<td>${contact.email}</td>
				<td>${contact.mobile}</td>
				<th><a href="createBill?bid=${contact.id}">Generate Bill</a></th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>