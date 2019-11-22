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
            <h1 class="display-4">Cadastro</h1>
        </div>
    </div>
    <div class="container ">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10">
                <form name="cadastro" action="Controle" method="POST" class="row">
                  <div class="form-group col-6">
                    <label for="nome">Nome completo<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="nome" placeholder="Nome completo*">
                  </div>
                  <div class="form-group col-6">
                    <label for="email">Email<span class="text-danger">*</span></label>
                    <input type="email" class="form-control" name="email" placeholder="Email*">
                  </div>
                  <div class="form-group col-6">
                    <label for="senha">Senha<span class="text-danger">*</span></label>
                    <input type="password" class="form-control" name="senha" placeholder="Senha*">
                  </div>
                  <div class="form-group col-6">
                    <label for="passwordTwo">Senha Novamente<span class="text-danger">*</span></label>
                    <input type="password" class="form-control" name="senhaConfirmacao" placeholder="Senha Novamente*">
                  </div>
                  <div class="col-12">
                    <button type="submit" name="acao" class="btn btn-primary" value="cadastrar">Cadastrar</button>
                    <button type="btn" name="btVoltar" onclick="history.go(-1);" value="Voltar" class="botao">Voltar</button>
                    
                  </div>
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