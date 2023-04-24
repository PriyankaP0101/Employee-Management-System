package employee.management.system.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import employee.management.system.dao.EmployeeDao;
import employee.management.system.dto.Admin;
import employee.management.system.dto.Employee;

@WebServlet("/ViewEmployees")
public class GetAllEmployees extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		
		if(admin!=null) {
		
		List<Employee> employees = new EmployeeDao().getAllEmployee(admin);
		
		req.setAttribute("employees", employees );
		
		req.getRequestDispatcher("ViewEmployee.jsp").forward(req, resp);
		}else {
			resp.sendRedirect("AdminLogIn.jsp");
		}
		
		
	}
}
