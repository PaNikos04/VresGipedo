<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Vres Gipedo - Φόρμα Εγγραφής</title>
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

        body{
            background-color: rgb(204, 202, 206);
        }
      }
      
    </style>
    <!-- Custom styles for this template -->
    <link href="css/mainpage.css" rel="stylesheet">
  </head>

  <body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
          <a class="navbar-brand">Vres Gipedo</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="mainpage.jsp">Αρχική Σελίδα</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="registerform.jsp" >Εγγραφή Χρήστη</a>
              </li>
            </ul>
            
          </div>
        </nav>
      </header>

      <main role="main"></main>
      
      <div class="container" style="position:absolute; left: 30%; top:150px;">
        <div class="row centered-form">
        
        	<div class="panel panel-default" style="width:170mm;">
        		<div class="panel-heading">
			    		<h2 class="panel-title" style="text-align: center;">Φόρμα Εγγραφής</h2>
             </div>
             <br>
			 			<div class="panel-body">
			    		<form role="form" class="container" action="registerController.jsp" method="POST">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="Όνομα" required>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Επώνυμο" required>
			    					</div>
			    				</div>
                            </div>
                            <div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="region" id="region" class="form-control input-sm" placeholder="Περιοχή" required>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="phone" id="phone" class="form-control input-sm" placeholder="Τηλέφωνο" maxlength="10" required>
			    					</div>
			    				</div>
                </div>
                <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    				<input type="username" name="username" id="username" class="form-control input-sm" placeholder="Username" required>
                </div>
              </div>
              <div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email" required>
                </div>
              </div>
            </div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password" required>
			    					</div>
			    				</div>
                </div>
                <div style="padding: 5%;">
                  <input type="submit" value="Εγγραφή" class="btn btn-primary btn-block">
                </div>
			    		
			    		</form>
			    	</div>
	    		</div>
    		
    	</div>
    </div>
  </body>
</main>

  <!-- FOOTER -->
  <!-- footer -->
  <footer class="navbar navbar-expand-md navbar-dark fixed-bottom bg-dark">
    <div class="container">
          <p>&copy; Copyright 2020 by ismgroup18</p>
    </div>
  </footer>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>

</html>