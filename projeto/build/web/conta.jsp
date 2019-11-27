<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Integer id = (Integer) session.getAttribute("id");
    String login = (String) session.getAttribute("login");
    String nome = (String) session.getAttribute("nome");
    String email = (String) session.getAttribute("email");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Conta | Project Anxiety</title>
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
    <div class="jumbotron py-1">
        <div class="container">
            <h1 class="display-4">Meus Dados</h1>
        </div>
    </div>
    <div class="container ">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10">
                <form name="form_mvc" class="row" action="Controle" method="post">
                  <div class="form-group col-6">
                    <label for="nome">Nome completo<span class="text-danger">*</span></label>
                    <input type="hidden" name="id" value="${id}">                    
                    <input type="text" class="form-control" name="nome" placeholder="Nome completo*" value="${nome}">
                  </div>
                  <div class="form-group col-6">
                    <label for="email">Email<span class="text-danger">*</span></label>
                    <input type="email" class="form-control" name="email" placeholder="Email*" value="${email}">
                  </div>
                 <div class="form-group col-6">
                    <label for="senha">Senha<span class="text-danger">*</span></label>
                    <input type="password" class="form-control" name="senha" placeholder="Senha*" required="">
                  </div>
                  <div class="col-12">
                    <button type="submit" name="acao" class="btn btn-primary" value="editar">Editar</button>
                    <input type="button" name="btVoltar" onclick="history.go(-1);" value="Voltar" class="btn btn-primary botao">
                    
                  </div>
                </form> 
            </div>
        </div>
    </div>
</div>

<hr>
<footer class="footer mt-auto py-3">
    <div class="container">

        <div class="footer-copyright text-center py-3">Project Anxiety © 2019 Copyright
            <a href="inicio.jsp"> Project Anxiety</a>
        </div>

    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script></body>
</html>