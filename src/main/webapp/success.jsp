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
     
		%>
<form action="namesearch" method="post">
		Enter Employee Id: <input type="text" name="username"><br>
		<input type="submit" value="Search">	
	</form>
	<form action="details" method="post">
	<h3>Update Salary Details</h3>
	<br>
	 <table style="with: 80%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
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
</body>
</html>