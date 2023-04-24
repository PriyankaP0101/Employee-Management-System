<%@page import="employee.management.system.dto.Admin"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">
</head>

<style>
body {
	height: 60vh;
	width: 100vw;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	font-family: 'Poppins', sans-serif;
}

a {
	padding: .5em 1em;
	font-size: 1.3rem;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin: .5rem 2rem;
	font-weight: 600;
}

a:hover {
	background-color: black;
	color: #49c5b6;
	border: 3px solid thin aqua;
}

h1 {
	padding: 3rem 0rem 0rem 0rem;
	font-size: 5rem;
	color: #49c5b6;
	background-color: #000;
	width: 100%;
	text-align: center;
	font-weight: 500;
	margin: 0
}

h3 {
	padding: 0rem;
	padding-bottom: 3rem;
	font-weight: 500;
	font-size: 1.3rem;
	background-color: #000;
	width: 100%;
	text-align: center;
	margin: 0;
	margin-bottom: 3rem;
	color: #49c5b6;
}

.a {
	width: 100%;
	display: flex;
	justify-content: center;
}
</style>
<body>



	<%
	Admin admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
	%>
	<h1>Welcome Admin</h1>
	<h3>You Can Manage Employee Data here!!</h3>
	<div class="a">
		<a href="SaveEmployee.jsp">Save Employee</a> <a href="ViewEmployees">View
			Employee</a> <a href="logout">LogOut</a>

	</div>
	<%
	} else {

	response.sendRedirect("AdminLogIn.jsp");

	}
	%>



	<div class="logout"></div>

</body>
</html>
