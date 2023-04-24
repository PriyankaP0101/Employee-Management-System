package employee.management.system.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import employee.management.system.dao.EmployeeDao;
import employee.management.system.dto.Admin;
import employee.management.system.dto.Employee;

@WebServlet("/saveUpdateStudent")
public class SaveUpdatedDetails extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession httpSession=req.getSession();
		Admin admin=(Admin)httpSession.getAttribute("admin");
		
		if(admin!=null) {
	
		int id = Integer.parseInt(req.getParameter("employeeId"));
		String name=req.getParameter("employeeName");
		String email=req.getParameter("employeeEmail");
		String phoneNo=req.getParameter("employeePhoneNo");
		String department=req.getParameter("employeeDepartment");
		
		Employee employee=new Employee();
		employee.setEmployeeId(id);
		employee.setEmployeeName(name);
		employee.setEmployeeEmail(email);
		employee.setEmployeePhoneNumber(phoneNo);
		employee.setEmployeeDepartment(department);
		employee.setAdmin(admin);
		
		EmployeeDao dao=new EmployeeDao();
		dao.updateEmployee(employee);
		
		List<Employee> employees=dao.getAllEmployee(admin);
		req.setAttribute("employees", employees);
		req.getRequestDispatcher("ViewEmployee.jsp").forward(req, resp);
		
		}else {
			resp.sendRedirect("AdminLogIn.jsp");
		}
	}
}
