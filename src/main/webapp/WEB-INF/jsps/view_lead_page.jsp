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
	<form action="saveLead" method="post">
		<pre>
			First Name:    <input type="text" name="firstName" required/>
			Last Name:     <input type="text" name="lastName" required/>
			Lead Source:   <select name="leadSource" >
						     <option value="Radio Channel">Radio Channel</option>
						     <option value="Employee">Employee</option>
						     <option value="News Paper">News Paper</option>
						     <option value="TV">TV</option>
						     <option value="Online">Online</option>
						   </select>
			Email:         <input type="email" name="email" required/>
			Mobile Number: <input type="number" name="mobile" required/>
			<input type="submit" value="Save" />
		</pre>
	</form>
	<div>
		${msg}
	</div>
</body>
</html>