<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	
	response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");//HTTP -1.1
	
	response.setHeader("pragma", "no-cache");//HTTP-1.0
	
	response.setHeader("Expires", "0");
	
	if(session.getAttribute("username")==null){
		response.sendRedirect("Home.jsp");
	}
	
	%>


	<div align ="center">
		<h1>WELCOME</h1>
		<h2>You logged in successfully !!!</h2>
		<a href ="Videos.jsp">VIDEOS</a>
	</div>
	
	<form action ="logout">
	
		<div align ="center">
	
			<input type ="submit" value ="logout">
		
		</div>
	
	</form>
</body>
</html>