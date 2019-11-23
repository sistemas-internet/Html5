<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="jumbotron">
            <div class="container-fluid text-center">
                <h3 class="display-5"> <%out.print(request.getAttribute("mensagem"));%></h3>
            </div>
        </div>
    </div>
</body>
<hr>
<footer class="footer mt-auto py-3">
    <div class="container">

        <div class="footer-copyright text-center py-3">© 2019 Copyright:
            <a href="index.html"> Project Anxiety</a>
        </div>
    </div>
</footer>
</html>