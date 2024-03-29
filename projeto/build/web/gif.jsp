<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Gif | Project Anxiety</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity=" sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-light bg-light shadow fixed-top">
        <a class="navbar-brand" href="inicio.jsp"><img src="images/buda.png" style="width: 40px"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <c:if test="${login == "logado"}">
                    <li class="nav-item">
                        <a class="nav-link" href="inicio.jsp">Index </a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="chat.jsp">Chat</a>
                </li>
                <c:if test="${login == "logado"}">
                    <li class="nav-item">
                        <a class="nav-link" href="gif.jsp">Gifs</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="sobre.jsp">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="conta.jsp"><u>Meus dados</u></a>
                </li>
                <c:if test="${login == "logado"}">
                    <li class="nav-item">
                        <a class="nav-link" href="sair.jsp"><img src="images/user_logado.png" width="25px"> <span class="login">Logout</span></a>
                    </li>
                </c:if>
            </ul>
        </div>
    </nav>
</header>

<div class="main-content">
    <div class="jumbotron">
        <div class="container-fluid text-center">
            <h3 class="display-5">Se sentindo ansioso?</h3>
            <p>O intuito � fazer com que o usu�rio tente distrair sua mente</p>
        </div>
    </div>
    <div class="container-fluid">
        <h3 class="display-5 text-center">Tente respirar no ritmo dessas anima��es:</h3>
        <div id="carousel-example-1z" class="carousel slide carousel-fade"  data-interval="false" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="video d-block" src="images/ezgif.com-video-to-gif4.gif">
                </div>
                <div class="carousel-item">
                    <img class="video d-block" src="images/ezgif.com-video-to-gif2.gif">
                </div>
                <div class="carousel-item">
                    <img class="video d-block" src="images/ezgif.com-video-to-gif3.gif">
                </div>
                <div class="carousel-item">
                    <img class="video d-block" src="images/ezgif.com-video-to-gif1.gif">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true" style="background-color: black"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true" style="background-color: black"></span>
                <span class="sr-only">Proximo</span>

            </a>
        </div>
    </div>
</div>

<hr>
<footer class="footer mt-auto py-3">
    <div class="container">

        <div class="footer-copyright text-center py-3">Project Anxiety � 2019 Copyright
            <a href="inicio.jsp"> Project Anxiety</a>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script></body>
</html>