<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String login = (String) session.getAttribute("login");
            
    if(login == null){
        RequestDispatcher redireciona = request.getRequestDispatcher("sair.jsp");
        redireciona.forward(request, response);
    }
%>

$>
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
                <c:if test="${login == "logado"}">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Index </a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="chat.html">Chat</a>
                </li>
                <c:if test="${login == "logado"}">
                    <li class="nav-item">
                        <a class="nav-link" href="gif.html">Gifs</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="sobre.html">FAQ</a>
                </li>
                <li class="nav-item d-none d-md-block">
                    &nbsp;
                    &nbsp;
                    &nbsp;
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
        <div class="container">
            <h1 class="display-4">Project Anxiety</h1>
            <p>O objetivo do sistema é oferecer auxilio que possa ser útil a acalmar pessoas com transtorno de ansiedade</p>
        </div>
    </div>
    <div class="container">
        <div class="row" style="margin: auto;">
            <div class="col-md-4">
                <h2>Chat</h2>
                <p> O chat sera troca de mensagens privadas em tempo real. </p>
                <a class="btn btn-secondary" href="chat.html" role="button"> Mais detalhes <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="col-md-4">
                <h2>Gifs</h2>
                <p> O intuito é fazer com que o usuário tente distrair sua mente.</p>
                <a class="btn btn-secondary" href="gif.html" role="button"> Mais detalhes <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="col-md-4">
                <h2>FAQ</h2>
                <p> Permite que o usuário encontre as respostas para as suas perguntas com mais rapidez e facilidade.</p>
                <a class="btn btn-secondary" href="sobre.html" role="button"> Mais detalhes <i class="fas fa-arrow-right"></i></a>
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
