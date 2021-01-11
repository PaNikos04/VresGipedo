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
  String field = request.getParameter("field");
  int id = Integer.parseInt(field);
  FieldDao fdao = new FieldDao();
  Field f = fdao.getField(id);
  request.setAttribute("myfield",f);
%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Vres Gipedo - Κράτηση</title>
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
        
        p{
          color: black;
        }
        h3{
          color: black;
        }
        input[type=radio]{
          visibility: hidden;
        }

      }
      
    </style>
    <!-- Custom styles for this template -->
    <link href="css/mainpage.css" rel="stylesheet">
  </head>
  <body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
          <a class="navbar-brand" href="#">Vres Gipedo</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="mainpage.jsp">Αρχική Σελίδα</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal" onclick="document.getElementById('myModal').style.display='block'" style="width:auto;">Βρες το γήπεδο σου</a>
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

        <section class="jumbotron text-center">
          <div class="container">
            <h1>Κράτηση</h1>
          </div>
        </section>
        <%
          String background;
          if (f.getIdCategory() == 1) {
            background = "bg_football";
          } else if (f.getIdCategory() == 2) {
            background = "bg_basketball";
          } else if (f.getIdCategory() == 3) {
            background ="bg_volleyball";
          } else {
            background = "bg_tennis";
          }
        %>
        <div class="<%=background%>">
          <div class="container">
            <div class="row">
              <div style="background-color: #e9ecef;">
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="full">
                    <br>
                    <img src="<%=f.getUrl()%>" alt="<%=f.getUrl()%>" width="350" height="200">
                    <h3><%=f.getTitle()%></h3>
                    <p><i class="fas fa-map-marker-alt"></i> <%=f.getStreet()%> <%=f.getNumber()%>, <%=fdao.getRegion(f.getIdRegion())%></p>
                    <p><i class="fas fa-phone fa-flip-horizontal"></i> <%=f.getPhone()%></p>
                    <p> <i class="fas fa-users"></i> Χωρητικότητα: <%=f.getCapacity()%></p>
                    <p> <i class="fas fa-euro-sign"></i> Κόστος: <%=f.getCost()%>€ <i class='fas fa-user-alt'></i></p>
                    <p>Bαθμολογία: 
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
                    </p>
                    <a href="rating.jsp?field=<%=f.getId()%>" class="btn btn-outline-secondary">Αξιολόγησε το γήπεδο</a>
                    <br>
                    <br>
                  </div>
                </div>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div style="background-color: #e9ecef; padding-bottom: 50px; padding-top: 50px;">
                    <form role="form" class="container" action="#myform" method="POST">
                      <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3">
                          <div class="form-group">
                            <label for="members"><b>Άτομα: </b></label>
                          </div>
                        </div>
                        <div class="col-xs-2 col-sm-2 col-md-2">
                          <div class="form-group">
                            <select class="custom-select" name="members" id="members" value="1">
                              <% for(int i=1; i<=f.getCapacity(); i++){ %>
                              <option value="<%=i%>"><%=i%></option>
                              <%}%>
              
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3">
                          <div class="form-group">
                            <label for="Date"><b>Ημερομηνία: </b></label>
                          </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                          <div class="form-group">
                            <input type="date" id="date" name="date" value="2020-12-02" min="2020-12-02" max="2020-12-08">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-5 offset-xs-3 col-sm-5 offset-sm-3 col-md-5 offset-md-3">
                          <button type="submit" class="btn btn-dark" style=" color: white; border-color: white; border-width: 2px;">Δες ώρες</button>
                        </div>
                        </div>
                    </form>
                      <form role="form" id="myform" class="container" action="payment.jsp" method="POST">
                        <br>
                      <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3">
                          <div class="form-group">
                            <!--<label for="Date"><b>Ώρα: </b></label>-->
                            <%
                            int people = 0;
                            String m =request.getParameter("members");
                            String date = (request.getParameter("date"));
                            if(m != null && date != null){
                              %><label for="Date"><b>Ώρα: </b></label><%
                              people = Integer.parseInt(m);
                              //out.println(people);
                              //out.println(date);
                            }
                            ReserveDao mydao = new ReserveDao();
                            List<List<String>> avails = mydao.getAvail(f.getId(), date);
                            %>
                          </div>
                        </div>
                        <div class="col-xs-9 col-sm-9 col-md-9">
                          <div class="form-group">
                            <!--show how many members and what date are the results for-->
                            <% if(m != null && date != null){ %>
                            Άτομα: <%out.println(people);%> <br>Ημερομηνία: <%out.println(date);%>
                            <%}%>
                            <table class="btn-group btn-group-toggle" data-toggle="buttons">
                              <tr>
                                <%
                                int count = 0;
                                for(int i=0; i<avails.size(); i++){
                                  count++;
                                %>
                                <td><button type="button" class="btn btn-outline-dark" <%if(Integer.parseInt(avails.get(i).get(1)) + people > f.getCapacity()){%> disabled <% }%>><b><%=avails.get(i).get(0)%> &ensp; <%=avails.get(i).get(1)%>/<%=f.getCapacity()%> </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour" name="hour" value="<%=avails.get(i).get(0)%>"></button>
                                </td>
                                <%
                                    if(count % 3 == 0){
                                 %> 
                                </tr>
                                 <tr>
                                <%     
                                    }

                                  }
                                %>
                              </tr>
                            </table>
                          </div>
                        </div>
                      </div>
                      <%if(m != null && date != null){
                        %>
                        
                        <input type="hidden" id="am" name="am" value="<%=f.getId()%>">
                        <input type="hidden" id="mymembers" name="mymembers" value="<%=people%>">
                        <input type="hidden" id="mydate" name="mydate" value="<%=date%>">
                        <input type="hidden" id="title" name="title" value="<%=f.getTitle()%>">
                        <input type="hidden" id="street" name="street" value="<%=f.getStreet()%>">
                        <input type="hidden" id="number" name="number" value="<%=f.getNumber()%>">
                        <input type="hidden" id="phone" name="phone" value="<%=f.getPhone()%>">
                        <input type="hidden" id="cost" name="cost" value="<%=f.getCost()%>">
                        <input type="hidden" id="fregion" name="fregion" value="<%=fdao.getRegion(f.getIdRegion())%>">
                        <input type="hidden" id="categ" name="categ" value="<%=f.getIdCategory()%>">


                      <div class="row">
                        <div class="col-xs-2 offset-xs-3 col-sm-2 offset-sm-3 col-md-2 offset-md-3">
                          <button type="submit" class="btn btn-success" style=" color: white; border-color: white; border-width: 2px;">Υποβολή</button>

                        </div>
                        <div class="col-xs-2 col-sm-2 col-md-2">
                          <a href="fields.jsp?sport=<%=f.getIdCategory()%>&region=<%=f.getIdRegion()%>" class="btn btn-danger" style=" color: white; border-color: white; border-width: 2px;">Ακύρωση</a>
                        </div>
                      </div>
                     <%
                      }
                      %>
                    </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        

        <!-- Modal -->
<div class="modal" id="myModal" >
  <div class="modal-dialog modal-dialog-centered" role="document">
  <form class="modal-content animate" action="fields.jsp" method="get">
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
  <form class="modal-content animate" action="fields_rate.jsp" method="post">
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