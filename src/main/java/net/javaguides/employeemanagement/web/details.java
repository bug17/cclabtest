package net.javaguides.employeemanagement.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.employeemanagement.dao.EmployeeDao;
import net.javaguides.employeemanagement.model.Employee;

/**
 * Servlet implementation class details
 */
@WebServlet("/details")
public class details extends HttpServlet {
	private static final long serialVersionUID = 1L;
private EmployeeDao employeeDao;
	
	public void init() {
		employeeDao = new EmployeeDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		
		String jobrole = request.getParameter("jobrole");
		Integer salaryy=Integer.parseInt(request.getParameter("salaryy"));
		Integer bonus=Integer.parseInt(request.getParameter("salaryy"));
		
		
	    
		
		Employee employee = new Employee();
		employee.setUsername(username);
			employee.setJob(jobrole);
		employee.setSalary(salaryy);
		employee.setBonus(bonus);
		
		try {
			employeeDao.registerEmployee(employee);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("success.jsp");
	}
}
