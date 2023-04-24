<%@page import="employee.management.system.dto.Admin"%>
<%@page import="employee.management.system.dto.Employee"%>
<%@page%>
<%@page%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>

<style>
html {
	overflow: hidden;
}

body {
	 display: flex;
	flex-direction: column; 
	align-items: center;  
	font-family: 'Poppins', sans-serif;
	width:inherit; 
}

h2 {
	font-size: 2rem;
}

table {
	border: 0;
	font-size: 1rem;
	
	
}


th {
	background-color: salmon;
	color: #49c5b6;
	background-color: #000;
	padding: 1rem;
}

tr {
	border: 0;
	border-bottom: 3px solid #565656;
}

td {
	border: 0;
	padding: 1rem;
}

a {
	padding: .5em 1em;
	font-size: 1rem;
	text-decoration: none;
	color: #202020;
	margin: .5rem 2rem;
	font-weight: 600;
}

a:hover {
	color: #49c5b6;
}

div {
	width: 100%;
	position: fixed;
}
</style>
<body>



	<%
	Admin admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
		List<Employee> employees = (List) request.getAttribute("employees");
	%>


	<table border="" class="table">
		<h2>List Of Employees</h2>
		<tr>

			<th>Employee Id</th>
			<th>Employee Name</th>
			<th>Employee Email</th>
			<th>Employee Phone</th>
			<th>Employee Department</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>

		<%
		for (Employee employee : employees) {
		%>

		<tr>
			<td><%=employee.getEmployeeId()%></td>
			<td><%=employee.getEmployeeName()%></td>
			<td><%=employee.getEmployeeEmail()%></td>
			<td><%=employee.getEmployeePhoneNumber()%></td>
			<td><%=employee.getEmployeeDepartment()%></td>
			<td><a
				href="updateEmployee?employeeId=<%=employee.getEmployeeId()%>">Update</a></td>
			<td><a
				href="deleteEmployee?employeeId=<%=employee.getEmployeeId()%>">Delete</a></td>

		</tr>

		<%
		}
		%>


	</table>

	<div>
		<a href="Dashboard.jsp">Home</a>
	</div>

	<%
	} else {
	response.sendRedirect("AdminLogIn.jsp");
	}
	%>


</body>
</html>