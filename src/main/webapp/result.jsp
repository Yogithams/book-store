<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <% String s  = (String)request.getAttribute("msg"); %>
    <h2><%= s %></h2>


    <h3> <a href="welcome.jsp">HOME</a></h3>
    <h3> <a href="home.jsp">Back</a></h3>
</body>
</html>