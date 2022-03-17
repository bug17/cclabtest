<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h1>Employee Register Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
   <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>Date-of-birth</td>
     <td><input type="DATE" name="address" /></td>
    </tr>
    <tr>
     <td>Contact</td>
     <td><input type="text" name="contact" /></td>
    </tr>
    <tr>
    <td><h2>Employee Salary Details</h2>
    </td>
    </tr>
 
  
    <tr>
     <td>Job Role</td>
     <td><input type="text" name="jobrole" /></td>
    </tr>
   <tr>
     <td>Salary</td>
     <td><input type="text" name="salaryy" /></td>
    </tr>
    <tr>
     <td>Bonus</td>
     <td><input type="text" name="bonus" /></td>
    </tr>
 
   </table>
   <input type="submit" value="Submit" />
 
  </form>
 </div>
</body>
</html>