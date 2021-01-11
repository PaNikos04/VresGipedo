<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
Client client = (Client)session.getAttribute("clientObj2020");
//get parameter from request
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirm = request.getParameter("conf_password");
String region = request.getParameter("region");
String phone = request.getParameter("phone");

String username = client.getUsername();


if(email.length()==0){
    email = client.getEmail();
}
if(phone.length()==0){
    phone = client.getPhone();
}
if(region.length()==0){
    region = client.getRegion();
}
if(password.length()==0){
    password = client.getPassword();
}
if(!password.equals(confirm)){
    request.setAttribute("message","Λάθος επιβεβαίωση κωδικού!");
%>
<jsp:forward page="danger.jsp"/>
<%
}

ClientDao cldao = new ClientDao();
cldao.changeProfile(username,email,phone,region,password);

client.setEmail(email);
client.setPhone(phone);
client.setRegion(region);
client.setPassword(password);


%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <!-- automatically will redirect to index_ex1_b_8XXXXXX.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="3;url=<%=request.getContextPath() %>/myprofile.jsp" />
    <link rel="icon" href="images/favicon1.jpg" type="image/png" sizes="16x16">


    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">
    <!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/fontawesome.all.css">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
    </style>
    <!-- Custom styles for this template -->
    <link href="css/mainpage.css" rel="stylesheet">
	<title>Completed change profile</title>

	</head>
	<body>	

		<div class="container" role="main">

      <div class="alert alert-success text-center" role="alert">Επιτυχής ενημέρωση του προφίλ!</div>	
      <!-- FIX GIF IN CENTER -->
		</div>
		<!-- /container -->

    <!-- footer -->
    <footer class="navbar-inverse navbar-expand-md navbar-dark fixed-bottom bg-dark">
        <div class="container">
            <p>&copy; Copyright 2020 by ismgroup18</p>
        </div>
    </footer>
    
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>
    </body>
      </html>
