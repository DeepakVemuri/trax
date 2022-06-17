<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate | Bill</title>
</head>
<body>
		<h2>Generate Bill</h2>
		<hr>
		Id: ${bill.bid}<br/>
		First Name: ${bill.firstName}<br/>
		Last Name: ${bill.lastName}<br/>
		Lead Source: ${bill.leadSource}<br/>
		Email: ${bill.email}<br/>
		Mobile Number: ${bill.mobile}<br/>
		Product Brand: ${bill.productBrand}<br/>
		Product Name: ${bill.productName}<br/>
		Amount: ${bill.amount}<br/>
		Payment Method: ${bill.payment}<br/>
		<br>
		<form >
			<input type="hidden" name="id" value="${bill.bid}" />
			<input type="submit" value="Download Pdf"/>
		</form>
</body>
</html>