package net.javaguides.employeemanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.javaguides.employeemanagement.model.Employee;

public class EmployeeDao {

    public int registerEmployee(Employee employee) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO garvit_111915034_detail" +
            " VALUES " +
            " ( ?, ?, ?, ?,?,?);";
        String INSERT_USERS_SQL1 = "INSERT INTO garvit_111915034_salary" +
                " VALUES " +
                " ( ?, ?, ?, ?);";

        int result = 0;
        int result1=0;
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/login", "root", "Placement@2023");
       	
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
        	 preparedStatement.setString(3, employee.getUsername());
             preparedStatement.setString(4, employee.getPassword());
            preparedStatement.setString(1, employee.getFirstName());
            preparedStatement.setString(2, employee.getLastName());
           
            preparedStatement.setString(5, employee.getAddress());
            preparedStatement.setString(6, employee.getContact());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/login", "root", "Placement@2023");
           	
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL1)) {
             
                preparedStatement.setString(1, employee.getjobrole());
                preparedStatement.setInt(2, employee.getsalary());
                preparedStatement.setInt(3, employee.getbonus());
                

                System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                result1 = preparedStatement.executeUpdate();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
          
        return (result & result1);
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}