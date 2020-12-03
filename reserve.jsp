<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
        .album label{
          color: black;
          text-shadow: 2px 2px 4px white;
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
              <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal2" onclick="document.getElementById('myModal2').style.display='block'" style="width:auto;">Αξιολόγησε γήπεδο</a>
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

        <section class="jumbotron text-center">
          <div class="container">
            <h1>Κράτηση</h1>
          </div>
        </section>
        <div class="album">
          <div class="container">
            <div class="row">
              <div style="background-color: white;">
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="full">
                    <br>
                    <img src="images/football_5x5.jpg" alt="football_5x5">
                    <h3>OAKA</h3>
                    <p><i class="fas fa-map-marker-alt"></i> Σπύρου Λούη 28, Μαρούσι</p>
                    <p><i class="fas fa-phone fa-flip-horizontal"></i> 2106117676</p>
                    <p> <i class="fas fa-users"></i> Χωρητικότητα: 10</p>
                    <p> <i class="fas fa-euro-sign"></i> Κόστος: 7€</p>
                    <p>Bαθμολογία: 
                      <span class="fa fa-star checked"></span>
                      <span class="fa fa-star checked"></span>
                      <span class="fa fa-star checked"></span>
                      <span class="fa fa-star"></span>
                      <span class="fa fa-star"></span>
                    </p>
                    <a href="rating.jsp" class="btn btn-outline-secondary">Αξιολόγησε το γήπεδο</a>
                    <br>
                    <br>
                  </div>
                </div>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12">
                    <form role="form" class="container" action="payment.jsp" method="POST">
                      <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3">
                          <div class="form-group">
                            <label for="members">Άτομα: </label>
                          </div>
                        </div>
                        <div class="col-xs-2 col-sm-2 col-md-2">
                          <div class="form-group">
                            <select class="custom-select" name="members" id="members">
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                              <option value="9">9</option>
                              <option value="10">10</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3">
                          <div class="form-group">
                            <label for="Date">Ημερομηνία: </label>
                          </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                          <div class="form-group">
                            <input type="date" id="date" name="date" value="2020-12-02" min="2020-12-02" max="2021-01-02">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3">
                          <div class="form-group">
                            <label for="Date">Ώρα: </label>
                          </div>
                        </div>
                        <div class="col-xs-9 col-sm-9 col-md-9">
                          <div class="form-group">
                            <table class="btn-group btn-group-toggle" data-toggle="buttons">
                              <tr>
                                <td><button type="button" class="btn btn-outline-light"><b>15:00 &ensp; 0/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour15" name="hour" value="15"></button>
                                </td>
                                <td><button type="button" class="btn btn-outline-light"><b>16:00 &ensp; 5/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour16" name="hour" value="16"></button>
                                </td>
                                <td><button type="button" class="btn btn-outline-light disabled"><b>17:00 &ensp; 10/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour17" name="hour" value="17" disabled></button>
                                </td>
                              </tr>
                              <tr>
                                <td><button type="button" class="btn btn-outline-light"><b>18:00 &ensp; 2/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour18" name="hour" value="18"></button>
                                </td>
                                <td><button type="button" class="btn btn-outline-light"><b>19:00 &ensp; 1/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour19" name="hour" value="19"></button>
                                </td>
                                <td><button type="button" class="btn btn-outline-light"><b>20:00 &ensp; 5/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour20" name="hour" value="20"></button>
                                </td>
                              </tr>
                              <tr>
                                <td><button type="button" class="btn btn-outline-light disabled"><b>21:00 &ensp; 10/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour21" name="hour" value="21" disabled></button>
                                </td>
                                <td><button type="button" class="btn btn-outline-light"><b>22:00 &ensp; 0/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour22" name="hour" value="22"></button>
                                </td>
                                <td><button type="button" class="btn btn-outline-light"><b>23:00 &ensp; 0/10 </b><i class="fas fa-user"></i>
                                  <input type="radio" id="hour23" name="hour" value="23"></button>
                                </td>
                              </tr>
                            </table>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-2 offset-xs-3 col-sm-2 offset-sm-3 col-md-2 offset-md-3">
                          <button type="submit" class="btn btn-success" style=" color: white; border-color: white; border-width: 2px;">Υποβολή</button>

                        </div>
                        <div class="col-xs-2 col-sm-2 col-md-2">
                          <button type="reset" class="btn btn-danger" style=" color: white; border-color: white; border-width: 2px;">Ακύρωση</button>

                        </div>
                      </div>
                  </form>
              </div>
            </div>
          </div>
        </div>

        <!-- Modal -->
<div class="modal" id="myModal" >
  <div class="modal-dialog modal-dialog-centered" role="document">
  <form class="modal-content animate" action="fields.jsp" method="post">
    <div class="container">
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε άθλημα</b></label>
        <select class="form-control" id="exampleFormControlSelect1">
          <option value="" selected disabled hidden>--- Άθλημα ---</option>
          <option>Ποδόσφαιρο</option>
          <option>Μπάσκετ</option>
          <option>Βόλλευ</option>
          <option>Τένις</option>
        </select>
      </div>
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε περιοχή</b></label>
        <select class="form-control" id="exampleFormControlSelect1">
          <option value="" selected disabled hidden>--- 
            Περιοχή ---</option>
          <option>Χαλάνδρι</option>
          <option>Κυψέλη</option>
          <option>Πατήσια</option>
          <option>Γαλάτσι</option>
          <option>Μαρούσι</option>
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
        <select class="form-control" id="exampleFormControlSelect1">
          <option value="" selected disabled hidden>--- Άθλημα ---</option>
          <option>Ποδόσφαιρο</option>
          <option>Μπάσκετ</option>
          <option>Βόλλευ</option>
          <option>Τένις</option>
        </select>
      </div>
      <div class="form-group">
        <label for="exampleFormControlSelect1"><b>Επιλέξτε περιοχή</b></label>
        <select class="form-control" id="exampleFormControlSelect1">
          <option value="" selected disabled hidden>--- 
            Περιοχή ---</option>
          <option>Χαλάνδρι</option>
          <option>Κυψέλη</option>
          <option>Πατήσια</option>
          <option>Γαλάτσι</option>
          <option>Μαρούσι</option>
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