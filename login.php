<?php
require "includes/header.php"
?>

<main>
  <title>login</title>
  <link rel="stylesheet" href="css/login.css" />
  <div class="background-pic">
    <div class="row">
      <div style="margin-top:40px;" id="slides" class="carousel slide col-md-8 offset-md-2" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#slides" data-slide-to="0" class="active"></li>
          <li data-target="#slides" data-slide-to="1"></li>
          <li data-target="#slides" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img style="width:500px;height:325px;" class="d-block mx-auto c-img" src="images/family-kitchen.jpg" alt="First slide" />
          </div>
          <div class="carousel-item">
            <img style="width:500px;height:325px;" class="d-block mx-auto c-img" src="images/chicken-parm.jpg" alt="Second slide" />
          </div>
          <div class="carousel-item">
            <img style="width:500px;height:325px;" class="d-block mx-auto c-img" src="images/food.jpg" alt="Third slide" />
          </div>
        </div>
        <a class="carousel-control-prev" href="#slides" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#slides" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    <div class="h-40 center-me">
      <div class="my-auto">
        <form class="form-signin" action="includes/login-helper.php" method="post"  style="background: white">
          <img class="login-logo" src="images/meallife.png" />
          <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
          <label for="inputEmail" class="sr-only">Email address or Username</label>
          <input name="uname" type="text" id="inputEmail" class="form-control" placeholder="Email address or Username" required autofocus />
          <label for="inputPassword" class="sr-only">Password</label>
          <input name="pwd" type="password" id="inputPassword" class="form-control" placeholder="Password" required />
          <div class="checkbox mb-3" style="text-align: left">
            <label>
              <input type="checkbox" style="margin: 7px" value="remember-me" />
              Remember me
            </label>
          </div>
          <button class="btn btn-lg btn-info btn-block" name="login-submit" type="submit">
            Sign in
          </button>
          <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
        </form>
      </div>
    </div>
  </div>
</main>