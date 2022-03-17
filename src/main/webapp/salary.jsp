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
 <h1>Employee Salary Details</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
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
   <br>
 
  </form>
</div>
</body>
</html>