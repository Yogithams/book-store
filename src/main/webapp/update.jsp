<%@page import="com.js.dto.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <h1>UPDATE YOUR DATA</h1>
     <% Book b = (Book)request.getAttribute("book"); %>
     
 <form action="edit" >
 <table style="background-color: lightblue; color: darkgreen;" width="400px;" height="400px;">


   <tr>
   <td> Book Id :</td>
   <td> <input type="text" name="id" value="<%= b.getId() %>" readonly="readonly">  </td> 
   </tr>
   
    <tr>
   <td> Book Name :</td>
   <td> <input type="text" name="name" value="<%= b.getBook_name() %>">  </td> 
   </tr>

    <tr>
   <td>Author Name :</td>
   <td> <input type="text" name="author" value="<%= b.getAuthor_name() %>">  </td> 
   </tr>
   
    <tr>
   <td>No Of Pages :</td>
   <td> <input type="text" name="nop" value="<%= b.getNo_of_pages() %>">  </td> 
   </tr>
   
    <tr>
   <td>Book Price :</td>
   <td> <input type="text" name="price" value="<%= b.getPrice() %>">  </td> 
   </tr>
   
    <tr>
   <td> <input type="submit" value="update">  </td> 
   </tr>
</table>
</form>
     

</body>
</html>