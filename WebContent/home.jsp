<%@page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%
	User usr1 = (User)session.getAttribute("user");
	if(usr1==null)
	{
		session.setAttribute("login-msg", "please login first");
		response.sendRedirect("login.jsp");
	}
	
	%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css" />

</head>
<body style="background-image: linear-gradient(to right top, #46cb40, #89ba00, #b3a600, #d48e00, #ea741b); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

	<!-- Navbar starts  -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom"> <a
		class="navbar-brand" href="#"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
			</li>

			<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>
	<!-- Navbar Ends  -->
				<%
				  	User usr = (User)session.getAttribute("user");
					
				
				%>
	<div class="container">
		<div class="row d-flex justify-content-center align-center">
			<div class="col-md-6">
				<div class="card">
				
				<%
				if(usr!=null){%> 
				
				<div class="card-body">
						<h3>Name  : <%= usr.getName() %></h3>
						<h3>Email : <%= usr.getEmail() %></h3>
						<div class="container text-center text-white">
							<a class="btn btn-primary btn-lg text-white" href="LogoutServlet" >Log-Out</a>
						</div>
					</div>
				
				
				<% }%>
					
				</div>
			</div>
		</div>
	</div>





</body>
</html>