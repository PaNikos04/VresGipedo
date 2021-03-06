<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
  Client client = (Client)session.getAttribute("clientObj2020");
%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Vres Gipedo - Αρχική Σελίδα</title>
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
        <li class="nav-item active">
          <a class="nav-link" href="VresGipedo">Αρχική Σελίδα </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal" onclick="document.getElementById('myModal').style.display='block'" style="width:auto;">Βρες το γήπεδο σου</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal2" onclick="document.getElementById('myModal2').style.display='block'" style="width:auto;">Αξιολόγησε γήπεδο</a>
        </li>
      </ul>
  
<% if(client != null) {
%>
<div class="btn-group">
  <button type="button" class="btn btn-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <i class='fas fa-user'></i> <%=client.getUsername()%>
  </button>
  <div class="dropdown-menu dropdown-menu-right" style="background-color: rgb(124, 124, 124);" >
    <form class="px-4 py-2">
    <div class="btn-group container" >
      <a href="myreservations.jsp" class="btn btn-dark" style="width: 200px;"> Οι κρατήσεις μου</a>
    </div>
    <p><hr style="border-top: 2px solid #bbb;
      border-radius: 5px;"></p>
    <div class="btn-group container" >
      <a href="myratings.jsp" class="btn btn-dark" style="width: 200px;"> Οι αξιολογήσεις μου</a>
    </div>
    <p><hr style="border-top: 2px solid #bbb;
      border-radius: 5px;"></p>
    <div class="btn-group container" >
      <a href="myprofile.jsp" class="btn btn-dark" style="width: 200px;"> Το προφίλ μου</a>
    </div>
    <p><hr style="border-top: 2px solid #bbb;
      border-radius: 5px;"></p>
    <div class="btn-group container">
      <a href="logout.jsp" class="btn btn-dark">
        <i class="fas fa-sign-out-alt"></i> Αποσύνδεση
      </a>
    </div>
  </form>
  </div>
</div>
<% } else {
  %>

      <div class="btn-group">
        <button type="button" class="btn btn-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class='fas fa-user'></i> Είσοδος
        </button>
        <div class="dropdown-menu dropdown-menu-right">
            <form class="px-4 py-3" action="loginController.jsp" method="POST">
            <div class="form-group">
                <label for="exampleDropdownFormEmail1">Username</label>
                <input type="text" name="username" class="form-control" id="exampleDropdownFormEmail1" placeholder="Username">
            </div>
            <div class="form-group">
                <label for="exampleDropdownFormPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <div class="form-check">
                <input type="checkbox" class="form-check-input" id="dropdownCheck">
                <label class="form-check-label" for="dropdownCheck">
                    Remember me
                </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary" name="status" value="mainpage.jsp" >Είσοδος</button>
            </form>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="registerform.jsp">Νέος εδώ; Κάνε εγγραφή!</a>
        </div>
      </div>
      <div class="btn-group">
        <a href="registerform.jsp" class="btn btn-dark">
          <i class="fas fa-book"></i> Εγγραφή
        </a>
      </div>
<%
      }
%>
    </div>
      
    </div>
  </nav>
</header>

<main role="main">

  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/football_main.jpg" class="d-block w-100" alt="football">
        <div class="carousel-caption d-none d-md-block">
          <h5>Ψάχνεις γήπεδο ποδοσφαίρου;</h5>
          <h1>Έλα και ΒΑΛΕ ΓΚΟΛ!!!</h1>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/basketball_main.jpg" class="d-block w-100" alt="basketball">
        <div class="carousel-caption d-none d-md-block">
          <h5>Ψάχνεις γήπεδο μπάσκετ;</h5>
          <h1>Ετοιμάσου για πολλά καρφώματα!!!</h1>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/tennis.jpg" class="d-block w-100" alt="tenis">
        <div class="carousel-caption d-none d-md-block">
          <h5>Ψάχνεις γήπεδο τένις;</h5>
          <h1>Εδώ τα σερβίς είναι ατελείωτα!!!</h1>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/volleyball_main.jpg" class="d-block w-100" alt="volley">
        <div class="carousel-caption d-none d-md-block">
          <h5>Ψάχνεις γήπεδο βόλλευ;</h5>
          <h1>Το καλύτερο μπλοκ κερδίζει!!!</h1>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

<!-- Modal -->
<div class="modal" id="myModal" >
  <div class="modal-dialog modal-dialog-centered" role="document">
  <form class="modal-content animate" action="fields.jsp" method="GET">
    <div class="container">
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε άθλημα</b></label>
        <select class="form-control" id="exampleFormControlSelect1" name="sport">
          <option value="" selected disabled hidden>--- Άθλημα ---</option>
          <option value="1">Ποδόσφαιρο</option>
          <option value="2">Μπάσκετ</option>
          <option value="3">Βόλλευ</option>
          <option value="4">Τένις</option>
        </select>
      </div>
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε περιοχή</b></label>
        <select class="form-control" id="exampleFormControlSelect1" name="region">
          <option value="" selected disabled hidden>--- Περιοχή ---</option>
          <option value="1">Χαλάνδρι</option>
          <option value="2">Κυψέλη</option>
          <option value="3">Πατήσια</option>
          <option value="4">Γαλάτσι</option>
          <option value="5">Μαρούσι</option>
        </select>
      </div>
      <div class="col-xs-offset-4 col-xs-8">
        <p style="text-align: center;">
          <button type="submit" class="btn btn-primary">Αναζήτηση</button>
        </p>
      </div>
    </div>
  </form>
</div>
</div>

<!-- Modal2 -->
<div class="modal" id="myModal2" >
  <div class="modal-dialog modal-dialog-centered" role="document">
  <form class="modal-content animate" action="fields_rate.jsp" method="GET">
    <div class="container">
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε άθλημα</b></label>
        <select class="form-control" id="sport" name="sport">
          <option value="" selected disabled hidden>--- Άθλημα ---</option>
          <option value="1">Ποδόσφαιρο</option>
          <option value="2">Μπάσκετ</option>
          <option value="3">Βόλλευ</option>
          <option value="4">Τένις</option>
        </select>
      </div>
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε περιοχή</b></label>
        <select class="form-control" id="sport" name="region">
          <option value="" selected disabled hidden>--- Περιοχή ---</option>
          <option value="1">Χαλάνδρι</option>
          <option value="2">Κυψέλη</option>
          <option value="3">Πατήσια</option>
          <option value="4">Γαλάτσι</option>
          <option value="5">Μαρούσι</option>
        </select>
      </div>
      <div class="col-xs-offset-4 col-xs-8">
        <p style="text-align: center;">
          <button type="submit" class="btn btn-primary">Αναζήτηση</button>
        </p>
      </div>
    </div>
  </form>
</div>
</div>

  <p style="text-align: center;">
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="document.getElementById('myModal').style.display='block'" style="width:auto;">Βρες το γήπεδο σου</button>
  </p><br>
  <script>
    // Get the modal
    var modal = document.getElementById('myModal');
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
  </script>
  
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
  <br><br>
  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <img src="images/favicon1.jpg"  alt="favicon" style="height: 150px;">
        <h2>Vres Gipedo - App</h2>
        <h6>Η πρώτη εφαρμογή εύρεσης γηπέδων. Εδώ:</h6>
        <p style="text-align: justify;">- βρίσκεις το γήπεδο σου<br>- κάνεις άμεσα την κράτηση του αγώνα σου<br>- πληρώνεις σε λίγα μόνο λεπτά<br>- αξιολογείς τo γήπεδo σου </p>
        <!--<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>-->
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img src="images/teamicon.jpg"  alt="teamicon" style="height: 150px;">
        <h2>About us</h2>
        <h6>Δημιουργοί Εφαρμογής</h6>
        <p style="text-align:center;">Κωνσταντίνος Ιωαννίδης<br>Αντώνιος Κανάκης<br>Αριστοτέλης Παπαδημητρίου<br>Νικόλαος Παυλόπουλος

        </p>
        <!--<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>-->
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img src="images/phoneicon.jpg"  alt="phoneicon" style="height: 150px;">
        <h2>Contact us</h2>
        <h6>Τηλέφωνα Επικοινωνίας</h6>
        <p>Σταθερό: 210753425<br>Κινητό: 6970354231</p>
        <!--<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>-->
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

  </div><!-- /.container -->


  

</main>
  <!-- FOOTER -->
  <!-- footer -->
  <footer class="navbar-inverse navbar-expand-md navbar-dark bg-dark">
    <div class="container">
          <p>&copy; Copyright 2020 by ismgroup18</p>
    </div>
  </footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>
