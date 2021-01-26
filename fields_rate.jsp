<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javagroup18.*, java.util.List"%>

<%
  request.setCharacterEncoding("UTF-8");
  String s = request.getParameter("sport");
  String r = request.getParameter("region");
  if(s == null || r == null){
    response.sendRedirect("VresGipedo");
    return;
}
  int sport = Integer.parseInt(s);
  int region = Integer.parseInt(r);
  Client client = (Client)session.getAttribute("clientObj2020");
  FieldDao fdao = new FieldDao();
  List<Field> fields = fdao.getFields(sport, region);
%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Vres Gipedo - Γήπεδα για Αξιολόγηση</title>
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
              <a class="nav-link" href="VresGipedo">Αρχική Σελίδα</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal2" onclick="document.getElementById('myModal').style.display='block'" style="width:auto;">Αξιολόγησε γήπεδο</a>
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
                  session.setAttribute("sport",sport);
                  session.setAttribute("region",region);
            %>

          <div class="btn-group">
            <button type="button" class="btn btn-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class='fas fa-user'></i> Είσοδος
            </button>
            <div class="dropdown-menu dropdown-menu-right">
                <form class="px-4 py-3" action="loginController.jsp" method="POST">
                <div class="form-group">
                    <label for="exampleDropdownFormEmail1">Username</label>
                    <input type="text" name="username" class="form-control" id="username" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="exampleDropdownFormPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <div class="form-check">
                    <input type="checkbox" class="form-check-input" name="checkbox" id="checkbox">
                    <label class="form-check-label" for="dropdownCheck">
                        Remember me
                    </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" name="status" value="fields_rate.jsp">Είσοδος</button>
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
      </nav>
    </header>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>Διάλεξε Γήπεδο</h1>
    </div>
  </section>

<%
  String background;
  if (sport == 1) {
    background = "bg_football";
  } else if (sport == 2) {
    background = "bg_basketball";
  } else if (sport == 3) {
    background ="bg_volleyball";
  } else {
    background = "bg_tennis";
  }
%>

  <div class=<%=background %>>
    <div class="container">

      <div class="row">
        <%
          for (Field f : fields) {
        %>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img src="<%=f.getUrl()%>" class="d-block w-100" alt="<%=f.getTitle()%>" width="100" height="200">
            <div class="card-body">
              <p class="card-text"><%=f.getTitle()%> <br><%=f.getStreet()%> <%=f.getNumber()%>, <%=fdao.getRegion(f.getIdRegion())%><br><i class="fas fa-phone fa-flip-horizontal"></i> <%=f.getPhone()%></p>
              <p></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <%
                  if (client != null) {
                    int id = f.getId();
                %>
                  <a href="rating.jsp?field=<%=id%>" class="btn btn-sm btn-outline-secondary">Αξιολόγηση εδώ</a>
                <%
                  } else {
                %>
                  <a class="btn btn-sm btn-outline-secondary" href="#" data-toggle="modal" data-target="#login" onclick="document.getElementById('login').style.display='block'" style="width:auto;">Αξιολόγηση εδώ</a>
                <%
                  }
                %>
                </div>
                <small class="text-muted">Χωρητικότητα: <%=f.getCapacity()%> <i class='fas fa-user-alt'></i><br>Κόστος: <%=f.getCost()%>€/<i class='fas fa-user-alt'></i><br>Βαθμολογία: 
                  <!--rating with checked stars-->
                  <%int stars = fdao.getFieldRating(f.getId());
                    int empty = 5 - stars;
                    for (int i = 0; i < stars; i++) {
                  %>
                  <span class="fa fa-star checked"></span>
                  <%
                    }
                    for (int i = 0; i < empty; i++) {
                  %>
                  <span class="fa fa-star"></span>
                  <%
                    }
                  %>
                </small>
              </div>
            </div>
          </div>
        </div>
        <%
          }
        %>
      </div>
    </div>
  </div>

  <div class="modal" id="login" >
    <div class="modal-dialog modal-dialog-centered" role="document">
    <form class="modal-content animate" action="loginController.jsp" method="POST">
      <div class="container">
        <br>
        <div class="alert alert-danger" role="alert" style="text-align: center;">
          <i class="fas fa-exclamation-circle"></i> Πρέπει να συνδεθείτε
        </div>
        <div class="form-group">
         <label for="exampleDropdownFormEmail1">Username</label>
          <input type="text" name="username" class="form-control" id="username" placeholder="Username">
        </div>
         <div class="form-group">
            <label for="exampleDropdownFormPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Password">
        </div>
        <div class="form-group">
          <div class="form-check">
          <input type="checkbox" class="form-check-input" name="checkbox" id="checkbox">
          <label class="form-check-label" for="dropdownCheck">
              Remember me
          </label>
          </div>
        </div>
        <div class="col-xs-offset-4 col-xs-8">
          <p style="text-align: center;">
            <button type="submit" class="btn btn-primary" name="status" value="fields_rate.jsp">Είσοδος</button>
          </p>
        </div>
        <div class="dropdown-divider"></div>
        <div style="text-align: center;">
        <a class="dropdown-item" href="registerform.jsp">Νέος εδώ; Κάνε εγγραφή!</a>
        </div>
      </div>
    </form>
  </div>
  </div>
  
  <div class="modal" id="myModal" >
    <div class="modal-dialog modal-dialog-centered" role="document">
    <form class="modal-content animate" action="fields_rate.jsp" method="GET">
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

</main>

<footer class="navbar-inverse navbar-expand-md navbar-dark bg-dark">
  <div class="container">
        <p>&copy; Copyright 2020 by ismgroup18</p>
  </div>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>  
    </body>
    </html>
