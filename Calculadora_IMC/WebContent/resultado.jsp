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
		String x = request.getParameter("resultado");
	%>
	
	<h1>SEU RESULTADO É: </h1> 
	<h2> <%=x%> </h2>
	
</body>
</html>