<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <form action="savebook" method="post"  >
<table style="background-color: lightblue; color: darkgreen;" width="400px;" height="400px;">


   <tr>
   <td> Book Id :</td>
   <td> <input type="text" name="id">  </td> 
   </tr>
   
    <tr>
   <td> Book Name :</td>
   <td> <input type="text" name="name" >  </td> 
   </tr>

    <tr>
   <td>Author Name :</td>
   <td> <input type="text" name="author">  </td> 
   </tr>
   
    <tr>
   <td>No Of Pages :</td>
   <td> <input type="text" name="nop">  </td> 
   </tr>
   
    <tr>
   <td>Book Price :</td>
   <td> <input type="text" name="price">  </td> 
   </tr>
   
    <tr>
   <td> <input type="submit" value="Save">  </td> 
   </tr>
</table>
</form>

</body>
</html>