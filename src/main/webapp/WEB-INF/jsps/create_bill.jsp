<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | View</title>
</head>
<body>
	<h2>View Lead</h2>
	<hr>
	<form action="generateBill" method="post">
		<pre>
			Id:             <input type="text" name="bid" value="${contact.id}" readonly/>
			First Name:     <input type="text" name="firstName" value="${contact.firstName}" readonly/>
			Last Name:      <input type="text" name="lastName" value="${contact.lastName}" readonly/>
			Lead Source:    <input type="text" name="leadSource" value="${contact.leadSource}" readonly/>
			Email:          <input type="email" name="email" value="${contact.email}" readonly/>
			Mobile Number:  <input type="number" name="mobile" value="${contact.mobile}" readonly/>
			Product Brand:  <input type="text" name="productBrand" required/>
			Product Name:   <input type="text" name="productName"  required/>
			Amount:         <input type="text" name="amount" required/>
			Payment Method: <input type="radio" name="payment" value="Cash"><label>Cash</label>
			                <input type="radio" name="payment" value="Card"><label>Card</label>
			                <input type="radio" name="payment" value="UPI"><label>UPI</label>
			<input type="submit" value="Generate Bill" />
		</pre>
	</form>
	<div>
		${msg}
	</div>
</body>
</html>