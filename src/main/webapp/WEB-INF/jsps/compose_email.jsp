<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose Email</title>
</head>
<body>
	<h2>Send Email</h2>
	<hr>
	<form action="sendEmail" method="post">
		<pre>
			To:      <input type="email" name="to" value="${email}" readonly/>
			Subject: <input type="text" name="subject"/>
			<textarea name="body" rows="25" cols="100"></textarea>
			<input type="submit" value="Send"/>
		</pre>
	</form>
	<div>${msg}</div>
</body>
</html>