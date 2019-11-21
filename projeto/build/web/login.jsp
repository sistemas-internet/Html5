<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Project Anxiety</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity=" sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-light bg-light shadow fixed-top">
        <a class="navbar-brand" href="index.html"><img src="images/buda.png" style="width: 40px"></a>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Index </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="chat.html">Chat</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="gif.html">Gifs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="sobre.html">FAQ</a>
                </li>
                <li class="nav-item d-none d-md-block">
                    &nbsp;
                    &nbsp;
                    &nbsp;
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp"><img src="images/user.png" width="25px"> <span class="login">Login</span></a>
                </li>
            </ul>
        </div>
    </nav>
</header>

<div class="main-content">
    <div class="jumbotron py-1">
        <div class="container">
            <h1 class="display-4">Login</h1>
        </div>
    </div>
    <div class="container ">
        <div class="row justify-content-center">
            <div class="col-12 col-md-4">
                <form>
                  <div class="form-group">
                      <label for="email">Email <span class="f_req">*</span></label>
                    <input type="email" class="form-control" id="email" placeholder="Seu email" >
                    <small id="emailHelp" class="form-text text-muted">Nunca compartilharemos seu email com terceiros.</small>
                  </div>
                  <div class="form-group">
                    <label for="senha">Senha <span class="f_req">*</span></label>
                    <input type="password" class="form-control" id="password" placeholder="Senha" >
                    <a href="cadastro.jsp"><small id="naoTenhoCadastro" class="form-text text-primary">N�o tem cadastro?</small></a>
                  </div>
                  <button type="submit" class="btn btn-primary">Entrar</button>
                </form>
            </div>
        </div>
    </div>
</div>

<hr>
<footer class="footer mt-auto py-3">
    <div class="container">

        <div class="footer-copyright text-center py-3">© 2019 Copyright:
            <a href="index.html"> Project Anxiety</a>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script></body>
</html>