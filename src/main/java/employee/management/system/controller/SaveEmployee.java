package employee.management.system.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import employee.management.system.dao.AdminDao;
import employee.management.system.dao.EmployeeDao;
import employee.management.system.dto.Admin;
import employee.management.system.dto.Employee;

@WebServlet("/save")
public class SaveEmployee extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		Admin admin=(Admin)session.getAttribute("admin");
		
		if(admin!=null)
		{
		String name=req.getParameter("employeeName");
		String email=req.getParameter("employeeEmail");
		String phoneNo=req.getParameter("employeePhoneNo");
		String department=req.getParameter("employeeDepartment");
		
		Employee employee=new Employee();
		employee.setEmployeeName(name);
		employee.setEmployeeEmail(email);
		employee.setEmployeePhoneNumber(phoneNo);
		employee.setEmployeeDepartment(department);
		employee.setAdmin(admin);
		
		EmployeeDao dao=new EmployeeDao();
		dao.signUpEmployee(employee);
		
		List<Employee>employees=admin.getEmployees();
		employees.add(employee);
		
		new AdminDao().updateAdmin(admin);
		resp.sendRedirect("Dashboard.jsp");
		}
		else
		{
			resp.sendRedirect("AdminLogIn.jsp");
		}
	}
}
