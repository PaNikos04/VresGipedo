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
    <title>Vres Gipedo - Αξιολόγηση</title>
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
      <style amp-custom>
        .rating {
          --star-size: 3;  /* use CSS variables to calculate dependent dimensions later */
          padding: none;  /* to prevent flicker when mousing over padding */
          border: none;  /* to prevent flicker when mousing over border */
          unicode-bidi: bidi-override; direction: rtl;  /* for CSS-only style change on hover */
          text-align: left;  /* revert the RTL direction */
          user-select: none;  /* disable mouse/touch selection */
          font-size: 3em;  /* fallback - IE doesn't support CSS variables */
          font-size: calc(var(--star-size) * 1em);  /* because `var(--star-size)em` would be too good to be true */
          cursor: pointer;
          /* disable touch feedback on cursor: pointer - http://stackoverflow.com/q/25704650/1269037 */
          -webkit-tap-highlight-color: rgba(0,0,0,0);
          -webkit-tap-highlight-color: transparent;
          margin-bottom: 0em;
        }
        /* the stars */
        .rating > label {
          display: inline-block;
          position: relative;
          width: 1.1em;  /* magic number to overlap the radio buttons on top of the stars */
          width: calc(var(--star-size) / 3 * 1.1em);
        }
        .rating > *:hover,
        .rating > *:hover ~ label,
        .rating:not(:hover) > input:checked ~ label {
          color: transparent;  /* reveal the contour/white star from the HTML markup */
          cursor: inherit;  /* avoid a cursor transition from arrow/pointer to text selection */
        }
        .rating > *:hover:before,
        .rating > *:hover ~ label:before,
        .rating:not(:hover) > input:checked ~ label:before {
          content: "★";
          position: absolute;
          left: 0;
          color: gold;
        }
        .rating > input {
          position: relative;
          transform: scale(3);  /* make the radio buttons big; they don't inherit font-size */
          transform: scale(var(--star-size));
          /* the magic numbers below correlate with the font-size */
          top: -0.5em;  /* margin-top doesn't work */
          top: calc(var(--star-size) / 6 * -1em);
          margin-left: -2.5em;  /* overlap the radio buttons exactly under the stars */
          margin-left: calc(var(--star-size) / 6 * -5em);
          z-index: 2;  /* bring the button above the stars so it captures touches/clicks */
          opacity: 0;  /* comment to see where the radio buttons are */
          font-size: initial; /* reset to default */
        }
        form.amp-form-submit-error [submit-error] {
          color: red;
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
              <a class="nav-link">Βρες το γήπεδο σου</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" >Αξιολόγησε γήπεδο</a>
            </li>
          </ul>
          <div class="btn-group">
            <button type="button" class="btn btn-dark" >
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
      <h1>Η Γνώμη Σου Μετράει</h1>
    </div>
  </section>

<div class="bg_football">
  <div class="container">
    <div class="row">
        <div class="col" style="background-color: #e9ecef; padding-bottom: 50px;">
            <h3 style="color: black;">Στοιχεία Γηπέδου:</h3>
            <h5 style="color: black;">ΟΑΚΑ</h5>
            <h5 style="color: black;">Σπύρου Λούη 28, Μαρούσι</h5>
            <h5 style="color: black;">2106117676</h5>
            <br>
            <h3 style="color: black;">Η Βαθμολογία σου:</h3>
            <form id="rating"
            method="post"
            action-xhr="https://amp.dev/documentation/examples/interactivity-dynamic-content/star_rating/set"
            target="_blank">
            <fieldset class="rating">
              <input name="rating"
                type="radio"
                id="rating5"
                value="5"
                on="change:rating.submit">
              <label for="rating5"
                title="5 stars">☆</label>

              <input name="rating"
                type="radio"
                id="rating4"
                value="4"
                on="change:rating.submit">
              <label for="rating4"
                title="4 stars">☆</label>

              <input name="rating"
                type="radio"
                id="rating3"
                value="3"
                on="change:rating.submit">
              <label for="rating3"
                title="3 stars">☆</label>

              <input name="rating"
                type="radio"
                id="rating2"
                value="2"
                on="change:rating.submit">
              <label for="rating2"
                title="2 stars">☆</label>

              <input name="rating"
                type="radio"
                id="rating1"
                value="1"
                on="change:rating.submit">
              <label for="rating1"
                title="1 stars">☆</label>
            </fieldset>

          <!--
                <div submit-success>
              <template type="amp-mustache">
                <p>Thanks for rating {{rating}} star(s)!</p>
              </template>
            </div>
            <div submit-error>
              <template type="amp-mustache">
                Looks like something went wrong. Please try to rate again. {{error}}
              </template>
            </div> 
          -->
          </form>
          <br>
          <h3 style="color: black;">Άφησε το σχόλιό σου: </h3>
            <div class="form-group">
              <label for="comment"></label>
              <textarea class="form-control" rows="5" id="comment" maxlength="140"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Υποβολή Αξιολόγησης</button>
        </div>
<div class="col">
    <img src="images/football_5x5.jpg" class="d-block w-100" alt="football" width="300" height="300" style="border-radius: 8px;">
</div>
    </div>
    </div>
</div>
</main>

<footer class="navbar-inverse navbar-expand-md navbar-dark  bg-dark">
  <div class="container">
        <p>&copy; Copyright 2020 by ismgroup18</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>
      <script async custom-element="amp-form" src="https://cdn.ampproject.org/v0/amp-form-0.1.js"></script>
      <script async custom-template="amp-mustache" src="https://cdn.ampproject.org/v0/amp-mustache-0.2.js"></script>
  </body>
      </html>
