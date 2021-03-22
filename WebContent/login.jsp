<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css" />


</head>
<body
	style="background-image: linear-gradient(to right top, #46cb40, #89ba00, #b3a600, #d48e00, #ea741b); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

	<!-- Navbar starts  -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom"> <a
		class="navbar-brand" href="#">Navbar</a>
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


	<!--  
Connection con= DBConnect.getConnection();
out.println(con); to check . DONE 
-->


	<div class="container">
		<div class="row mt-3 ">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center text-white c-head">
						<i class="fa fa-user-circle-o"
							style="font-size: 70px; color: white"></i>
						<h5>Login Page</h5>
					</div>


					<%
						String logoutMsg = (String) session.getAttribute("logout-msg");

						if (logoutMsg != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=logoutMsg%>
					</div>


					<%
						session.removeAttribute("logout-msg");

						}
					%>


					<%
					
					String errorMsg = (String)session.getAttribute("error-msg");
					
					if(errorMsg!=null){%>
					<div class="alert alert-danger" role="alert">
						<%= errorMsg %>
					</div>

					<%
					
					session.removeAttribute("error-msg");
					}
					
					%>




					<div class="card-body">

						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password">
							</div>

							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Submit</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>