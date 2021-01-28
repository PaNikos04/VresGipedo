<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
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


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Vres Gipedo - Κρατήσεις Χρήστη</title>
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
                <a class="nav-link" href="VresGipedo">Αρχική Σελίδα</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal" onclick="document.getElementById('myModal').style.display='block'" style="width:auto;">Βρες το γήπεδο σου</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal2" onclick="document.getElementById('myModal2').style.display='block'" style="width:auto;">Αξιολόγησε γήπεδο</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#" >Οι κρατήσεις μου</a>
              </li>
            </ul>
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
            
          </div>
        </nav>
      </header>

    <main role="main">
        
        <%
  PaymentDao paydao = new PaymentDao();
  int idCli = paydao.getIdClient(client.getUsername());
  GameDao gamedao = new GameDao();
  List<Integer> myids = gamedao.getmyids(idCli);
    if(myids==null){
%>
<br>
<div class="container">
      <h1 class="alert alert-danger text-center"style="text-align: center;">Καμία κράτηση...</h1><br><br><br><br><br>
      <h2 style="text-align: center;">Για κράτηση πατήστε εδώ</h2> <br>
      <p style="text-align: center;">
        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="document.getElementById('myModal').style.display='block'" style="width:auto;">Κάνε κράτηση τώρα</button>
      </p>

      
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

  </main>

<!-- FOOTER -->
<!-- footer -->
<footer class="navbar-inverse navbar-expand-md fixed-bottom navbar-dark  bg-dark">
  <div class="container">
        <p>&copy; Copyright 2020 by ismgroup18</p>
  </div>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>

</html>
<%
    } else{
      %>
      <section class="jumbotron text-center">
        <div class="container">
          <h1>Κρατήσεις</h1>
        </div>
      </section>
      <br>

    <div class="container">
        <table class="table  table-hover table-bordered">
                    <tr>
                        <th></th>
                        <th>Γήπεδο</th>
                        <th>Ημερομηνία</th>
                        <th>Ώρα</th>
                        <th>Συμμετέχοντες</th>
                    </tr>
      <%
 for(int i: myids){
   Game game = gamedao.getGame(i);
   FieldDao fdao = new FieldDao();
   Field field = fdao.getField(game.getIdField());
   %>
   <tr>
    <td width="300"><img src="<%=field.getUrl()%>" class="d-block w-100" alt="<%=field.getTitle()%>" width="50" height="140"></td>
    <td><%=field.getTitle()%></td>
    <td><%=game.getGame_date()%></td>
    <td><%=game.getGame_hour()%></td>
    <td><%=game.getParticipants()%></td>
  </tr>
   <%
  } 

  %>


                </table>
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

    </main>

  <!-- FOOTER -->
  <!-- footer -->
  <footer class="navbar-inverse navbar-expand-md navbar-dark  bg-dark">
    <div class="container">
          <p>&copy; Copyright 2020 by ismgroup18</p>
    </div>
  </footer>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>

</html>
<%}%>