<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>


<%
Client client = (Client)session.getAttribute("clientObj2020");
  if (client == null) {
    request.setAttribute("message","Δεν έχετε πρόσβαση σε αυτή τη σελίδα!");
%>
  <jsp:forward page="danger.jsp"/>
<%
  }
%>
<%
//get parameter from request
request.setCharacterEncoding("UTF-8");
int type = Integer.parseInt(request.getParameter("form"));
String date = request.getParameter("paydate");
String crednumber = request.getParameter("creditnumber");
String funame = request.getParameter("fullname");
String month = request.getParameter("month");
String year = request.getParameter("year");
String cbb = request.getParameter("cvv");
Double cost = Double.parseDouble(request.getParameter("cost"));
String email = request.getParameter("email");
String game_date = request.getParameter("date");
String game_hour = request.getParameter("hour");
int participants = Integer.parseInt(request.getParameter("members"));
int idFie = Integer.parseInt(request.getParameter("fid"));

int exp_month = 0;
int exp_year = 0;
int cvv = 0;
if(type == 1){
    exp_month = Integer.parseInt(month);
    exp_year = Integer.parseInt(year);
    cvv = Integer.parseInt(cbb);

}
Payment payment = new Payment(date, cost, crednumber, exp_month, exp_year, cvv, funame, email);
PaymentDao paydao = new PaymentDao();
paydao.createPayment(payment);
int idPay = paydao.getIdPayment();
paydao.createGame(game_date, game_hour, participants, idFie, idPay);
paydao.setStatus(idFie, game_date, game_hour, participants);
int idGame = paydao.getIdGame();
int idCli = paydao.getIdClient(client.getUsername());
paydao.createPlaysIn(idGame, idCli);


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
	<meta http-equiv="refresh" content="3;url=<%=request.getContextPath() %>/mainpage.jsp" />
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
	<title>Completed payment</title>

	</head>
	<body>	

		<div class="container" role="main">

      <div class="alert alert-success text-center" role="alert">Επιτυχής πληρωμή!</div>	
      <!-- FIX GIF IN CENTER -->
        <h1 style="text-align: center;">Τα λέμε στο γήπεδο!</h1>
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