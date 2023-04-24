<%@page import="employee.management.system.dto.Employee"%>
<%@page%>
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
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}

form {
	width: 40%;
	height: max-content;
	border: 1px solid #8EC5FC;
	border-radius: 40px;
	padding: 1rem;
	background-color: #61c4d0;
	background-image: linear-gradient(43deg, #61c4d0 0%, #246d5a 46%, #6899a9 100%);
	box-shadow: 2px 3px 4px #CCAD43;
}

form:hover {
	background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%,
		rgba(36, 163, 190, 1) 91.1%);
	box-shadow: 2px 3px 4px #04AF4F;
}

input {
	width: 90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #49c5b6;
	border-bottom-style: groove;
	border-top-left-radius: 20px;
	border-bottom-right-radius: 20px;
}

input:hover {
	background-color: #08535C;
	border: none;
}

input:enabled {
	color: orange;
	border: 2px 2px 2px dotted;
}

placeholder:hover {
	color: green;
}

select {
	width: 50%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
	border-top-left-radius: 20px;
	border-bottom-right-radius: 20px;
}

option {
	background-color: black;
	color: aqua;
}

select:hover {
	background-color: #08535C;
	border-color: red;
	border: none;
}

.btn {
	width: 10%;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 2rem;
	font-weight: 600;
}

.btn:hover {
	background-color: salmon;
	border: 3px solid salmon;
	color: #fff;
}

h2 {
	font-size: 2rem;
}

.submitbtn {
	background-color: black;
	color: aqua;
	width: 14rem;
	border-radius: 20px;
	margin-left: 100px;
}

h1 {
	color: white;
}
</style>
<body>

	<%
	Employee employee = (Employee) request.getAttribute("employee");
	%>

	<form action="saveUpdateStudent" method="post">
		<h1>Update Employee Details</h1>
		<input name="employeeId" type="text"
			value="<%=employee.getEmployeeId()%>" readonly="readonly">
		<br>
		<br> <input name="employeeName" type="text"
			value="<%=employee.getEmployeeName()%>"> <br>
		<br> <input name="employeeEmail" type="email"
			value="<%=employee.getEmployeeEmail()%>"> <br> <br>

		<input name="employeePhoneNo" type="text"
			value="<%=employee.getEmployeePhoneNumber()%>"> <br> <br>

		<select name="employeeDepartment"
			value="<%=employee.getEmployeeDepartment()%>">
			<br>
			<br>
			<option>IT</option>
			<option>Marketing</option>
			<option>Service</option>

		</select> <br> <br> <input type="submit" value="Update">

	</form>

</body>
</html>