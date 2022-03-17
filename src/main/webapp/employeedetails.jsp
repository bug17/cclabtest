<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import= "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login1.jsp");
		}
	%>
	<% 
		String url="jdbc:mysql://localhost:3306/login";
		String user ="root";
		String password ="Placement@2023";
		
		String query1="select employee_id,first_name,last_name,date_of_birth,contact from garvit_111915034_detail where employee_id =?;";
		String query2="select job_role,salary,bonus from garvit_111915034_salary where employee_id =?;";
		
		//String id="s";
		String id=(String) session.getAttribute("username");

		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,user,password);
			
			PreparedStatement st1= con.prepareStatement(query1);
			st1.setString(1, id );
			ResultSet rs1 =st1.executeQuery();
			
			//PreparedStatement st2= con.prepareStatement(query2);
			//st2.setString(1, id );
			//ResultSet rs2 =st2.executeQuery();
			
			if(!rs1.next())
			{	out.println("ID not found\n");}
			
			else
			{
				//int salary=rs2.getInt(2);
				//int bonus=rs2.getInt(3);
				//salary=(salary*12)+bonus;
			%>
				<Table border=1 >
				
				<tr><td>First Name: </td><td> <%=rs1.getString(1) %> </td></tr>
				<tr><td>Last Name: </td><td> <%=rs1.getString(2) %> </td></tr>
				<tr><td>Date of Birth: </td><td> <%=rs1.getString(3) %> </td></tr>
				<tr><td>Contact No: </td><td> <%=rs1.getString(4) %> </td></tr>
				</Table>
			
		<%} }
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,user,password);
			
		
			PreparedStatement st2= con.prepareStatement(query2);
			st2.setString(1, id );
			ResultSet rs2 =st2.executeQuery();
			
			if(!rs2.next())
			{	out.println("ID not found\n");}
			
			else
			{
				int salary=rs2.getInt(2);
				int bonus=rs2.getInt(3);
				int annual=salary*12;
				salary=(salary*12)+bonus;
			%>
				<Table border=1>
				<tr><td>Job Role: </td><td> <%=rs2.getString(1) %> </td></tr>
				<tr><td>Monthly Salary: </td><td> <%=rs2.getString(2) %> </td></tr>
				<tr><td>Bonus: </td><td> <%=rs2.getString(3) %> </td></tr>
				<tr><td>Annual Salary: </td><td> <%= annual%> </td></tr>
				<tr><td>Total Salary: </td><td> <%= salary%> %> </td></tr>
				</Table>
			
		<%} }
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%>
	
	<form action="Logout" method="post">
		<input type="submit" value="Log Out">	
	</form>

</body>
</html>