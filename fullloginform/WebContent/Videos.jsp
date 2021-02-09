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
	
	response.setHeader("Cache-Control", "co-cache , no-store,must-revalidate");
	
	if(session.getAttribute("username")==null){
		response.sendRedirect("Home.jsp");
	}
	
	%>
	

	<div>
		<h1>Hiii</h1>
		
	</div>
	
	
	<form action ="logout">
	
		<div align ="center">
	
			<input type ="submit" value ="logout">
		
		</div>
	
	</form>
</body>
</html>