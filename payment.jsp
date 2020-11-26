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
    <title>Vres Gipedo - Πληρωμή</title>
    <link rel="icon" href="images/favicon1.jpg" type="image/png" sizes="16x16">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">

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
            <li class="nav-item">
              <a class="nav-link" href="#">Βρες το γήπεδο σου</a>
            </li>
          </ul>
          <div class="btn-group">
            <button type="button" class="btn btn-dark"  >
            <i class='fas fa-user'></i> mariosdim
            </button>    
          </div>
          <div class="btn-group">
            <a href="mainpage.jsp" class="btn btn-dark">
              <i class="fas fa-sign-out-alt"></i> Αποσύνδεση
            </a>
          </div>
          
        </div>
      </nav>
    </header>

<main role="main">
  <section class="jumbotron text-center">
    <div class="container">
      <h1>Πληρωμή</h1>
    </div>
  </section>
  

  <div class="container py-5">
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-4">Στοιχεία Κράτησης</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-body">
                  <form class="forms-sample">
                    <div class="form-group row">
                      <div class="col"> <label>Όνομα</label> <input class="form-control" id="name" placeholder="Μάριος" readonly> </div>
                      <div class="col"> <label>Επώνυμο</label> <input class="form-control" id="surname" placeholder="Δημητρίου" readonly> </div>
                  </div>
                    <div class="col-lg-16"> <label>Email</label> <input class="form-control" id="email" placeholder="mdimitriou@gmail.com" readonly> </div>  
                    <div class="col-lg-16"> <label>Γήπεδο</label> <input class="form-control" id="field" placeholder="ΟΑΚΑ" readonly> </div>
                    <div class="col-lg-16"> <label>Διεύθυνση Γηπέδου</label> <input class="form-control" id="fieldaddress" placeholder="Σπύρου Λούη 28, Μαρούσι" readonly> </div>
                    <div class="col-lg-16"> <label>Τηλέφωνο Γηπέδου</label> <input class="form-control" id="fieldphone" placeholder="2106117676" readonly> </div>
                    <div class="form-group row">
                      <div class="col"> <label>Ημερομηνία</label> <input class="form-control" id="date" placeholder="20/12/2020" readonly> </div>
                      <div class="col"> <label>Ώρα</label> <input class="form-control" id="hour" placeholder="17:00" readonly> </div>
                    </div>  
                    <div class="form-group row">
                      <div class="col"> <label>Άτομα</label><input class="form-control" id="people" placeholder="10" readonly> </div>
                      <div class="col"> <label>Κόστος ανά άτομο</label> <input class="form-control" id="personalcost" placeholder="7,00€" readonly> </div>
                    </div>
                    <div class="form-group"> <label>Συνολικό Κόστος</label> <input class="form-control" id="totalcost" placeholder="70,00€" readonly> </div>                          
                  </div>
                </form>
                </div>
            </div>
        </div>
    </div>



  <div class="container py-5">
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-4">Τρόποι Πληρωμής</h1>
        </div>
    </div>
    <div class="row" name="paymentmethod">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fas fa-credit-card mr-2"></i> Πιστωτική Κάρτα</a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fab fa-paypal mr-2"></i> Paypal </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#cash" class="nav-link "> <i class="fas fa-coins"></i></i> Μετρητά </a> </li>
                        </ul>
                    </div> <!-- End -->
                    <!-- Credit card form content -->
                    <div class="tab-content">
                        <!-- credit card info-->
                        <div id="credit-card" class="tab-pane fade show active pt-3">
                            <form role="form" action="#" method="POST">
                              <div class="form-group"> 
                                <label for="cardNumber">
                                <h6>Αριθμός Κάρτας</h6>
                                </label>
                                <div class="input-group"> <input type="text" name="cardNumber" placeholder="Αριθμός Κάρτας" class="form-control " maxlength="16" required>
                                  <div class="input-group-append"> <span class="input-group-text text-muted"> 
                                    <i class="fab fa-cc-visa mx-1"></i> 
                                    <i class="fab fa-cc-mastercard mx-1"></i> 
                                    <i class="fab fa-cc-amex mx-1"></i> </span> </div>
                                </div>
                            </div>
                                <div class="form-group"> <label for="username">
                                        <h6>Ονοματεπώνυμο Κατόχου Κάρτας</h6>
                                    </label> <input type="text" name="username" placeholder="Ονοματεπώνυμο Κατόχου Κάρτας" required class="form-control "> </div>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group"> <label><span class="hidden-xs">
                                                    <h6>Ημερομηνία Λήξης</h6>
                                                </span></label>
                                            <div class="input-group"> 
                                              <select class="form-control" id="exampleFormControlSelect1" required>
                                                <option value="" selected disabled hidden>MM</option>
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                              </select>
                                              <select class="form-control" id="exampleFormControlSelect1" required>
                                                <option value="" selected disabled hidden>YY</option>
                                                <option>2020</option>
                                                <option>2021</option>
                                                <option>2022</option>
                                                <option>2023</option>
                                                <option>2024</option>
                                                <option>2025</option>
                                              </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                                <h6>CVV <i class="fa fa-question-circle d-inline" ></i></h6>
                                            </label> <input type="text" required class="form-control" maxlength="3"> </div>
                                    </div>
                                </div>
                                <div class="row">
                                  <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div> 
                                      <button type="submit" class="subscribe btn btn-primary btn-block shadow-sm"> Πληρωμή 70,00€ </button>
                                    </div>
                                  </div>
                                  <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div> 
                                      <a href="reserve.jsp" class="subscribe btn btn-danger btn-block shadow-sm"> Ακύρωση</a>
                                    </div>
                                  </div>
                                
                            </form>
                        </div>
                    </div> <!-- End -->
                    <!-- Paypal info -->
                    
                    <div id="paypal" class="tab-pane fade pt-3">
                      <div class="form-group"> 
                        <label for="username">
                        <h6>Email Κατόχου</h6>
                    </label> 
                    <input type="email" name="username" placeholder="Email Κατόχου" required class="form-control"> 
                  </div>
                        <h6 class="pb-2">Διαλέξτε το είδος του λογαριασμού</h6>
                        <div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio" checked> Εγχώριος </label> <label class="radio-inline"> <input type="radio" name="optradio" class="ml-5">Διεθνής </label></div>
                        <p> <button type="button" class="btn btn-primary "><i class="fab fa-paypal mr-2"></i> Σύνδεση σε Paypal</button> </p>
                    </div> <!-- End -->
                    <!-- bank transfer info -->
                    <div id="cash" class="tab-pane fade pt-3">
                        <div class="form-group ">
                          <div class="checkbox">
                            <label>
                              <input type="checkbox" name="checkbox" value="check" checked> Πληρωμή με Μετρητά στο Γήπεδο
                            </label>
                          </div>
                              </div>
                        <div class="form-group">
                            <p> <button type="button" class="btn btn-primary "><i class="fas fa-coins"></i> Πληρωμή 70,00€ </button> </p>
                        </div>
                    </div> <!-- End -->
                    <!-- End -->
                </div>
            </div>
        </div>
    </div>


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