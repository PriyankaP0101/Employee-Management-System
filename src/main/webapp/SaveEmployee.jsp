<%@page import="employee.management.system.dto.Admin"%>
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
	border: 1px solid #8EC5FC ;
	border-radius: 40px;
	padding: 1rem;
		
	background-color: #61c4d0;
background-image: linear-gradient(43deg, #61c4d0 0%, #246d5a 46%, #6899a9 100%);
	
	box-shadow: 2px 3px 4px #CCAD43;
}
form:hover{
background-image: linear-gradient( 109.6deg,  rgba(15,2,2,1) 11.2%, rgba(36,163,190,1) 91.1% );


box-shadow: 2px 3px 4px #04AF4F;
}

input {
	width:90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #49c5b6;
	border-bottom-style: groove;
	
	border-top-left-radius: 20px;
	border-bottom-right-radius: 20px;
}
input:hover{

background-color:#08535C;
border-color: red;
border: none;
}

input:enabled{

color:orange;
border: 2px 2px 2px dotted;
}
placeholder:hover{
color:green;
}


select{
	width:50%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
		border-top-left-radius: 20px;
	border-bottom-right-radius: 20px;
	
}
option{
background-color:black;
color:aqua;
}
select:hover{

background-color:#08535C;
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
h1{

color: white;}
.submitbtn{
background-color: black;
color:aqua;
width: 14rem;
border-radius: 20px;
margin-left: 100px;
}


</style>

<body>

<%Admin admin= (Admin)session.getAttribute("admin"); 
if(admin!=null){
%>

	<form action="save" method="post">
		<h1>Fill Employee Details</h1>
		<input name="employeeName"
			type="text" placeholder="Enter Employee Name"> <br><br>
		
		  <input
			name="employeeEmail" type="email" placeholder="Enter Employee Email">
			<br> <br>
	
		 <input
			name="employeePhoneNo" type="text"
			placeholder="Enter Employee Phone Number"> <br> <br>
		
		
		 <select
			name="employeeDepartment" placeholder="Enter Employee Department">
				<br>
				<br>
				<option>IT</option>
				<option>Marketing</option>
				<option>Service</option>

		</select>
		<br> <br> 
		
			<input type="submit"
					value="Save" class="submitbtn">
	
	</form>
	
	<%}else{
	response.sendRedirect("AdminLogIn.jsp");
	}%>

</body>
</html>