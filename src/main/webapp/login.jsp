<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="font-size: 25px; " >

   <form action="login" method="post">
      <table style="background-color: lightblue; color: darkgreen;">
        <tr>
          <td> Email Id : </td>
          <td> <input type="text" name="email"> </td>
        </tr>
        <tr>
           <td>Password :</td>
           <td> <input type="password" name="pwd"> </td>
        </tr>
        <tr> 
           <td> <input type="submit" value="Login"> </td>
        </tr>
      </table>
   </form>

</body>
</html>