<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Chat | Project Anxiety</title>
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
                <li class="nav-item">
                    <a class="nav-link" href="inicio.jsp">Index</a>
                </li>
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
            </ul>
        </div>
    </nav>
</header>

<div class="main-content">
    <div class="jumbotron">
        <div class="container text-center">
            <h1 class="display-4">FAQ</h1>
            <p>Permite que o usuário encontre as respostas para as suas perguntas com mais rapidez e facilidade</p>
        </div>
    </div>
    <div class="container">
        <div class="container-fluid">
            <div class="panel-group" id="accordion2">
                <div class="span12">
                    <h2 class="display-4 text-center">FAQ</h2>
                </div>
                <div class="panel panel-default">
                    <a id="accordion-faq-1" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse1">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> Oque � Ansiedade?
                            </h4>
                        </div>
                    </a>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-1">
                            <p>
Ansiedade � a rea��o natural do corpo ao stress. � um estado emocional caracterizado por
                                sentimentos de tens�o, preocupa��o e pensamentos ruins. � importante ressaltar que nem
                                sempre a ansiedade � uma doen�a. A ansiedade em seu estado normal � saud�vel para o
                                indiv�duo, pois ela o impulsiona para realizar projetos, prosperar e planejar o futuro.
                                O que se torna alarmante � o excesso desse sentimento.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <a id="accordion-faq-3" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse3">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> Causas da ansiedade:
                            </h4>
                        </div>
                    </a>
                    <div id="collapse3" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-3">
<p>Existem v�rias teorias e at� mesmo cren�as sobre onde e como surgiu a ansiedade.
                                Predisposi��o gen�tica, fatores ambientais e at� mesmo hist�rico familiar s�o algumas
                                das centenas possibilidades de origem da ansiedade. Apesar de n�o ser a mesma causa para
                                todas as pessoas, alguns fatores s�o bem comuns:</p>
                            <p>O enorme tabu sobre sa�de mental no ambiente de trabalho. Precisamos quebrar esse tabu e
                                isso n�o ser� feito de uma hora para a outra.</p>
                            <p>Fatores ambientais como press�o no trabalho e situa��es familiares. Esses fatores podem
                                gerar uma preocupa��o constante a ponto de evoluir de uma ansiedade comum e natural para
                                um quadro mais s�rio de transtorno;</p>
                            <p>Fatores emocionais gerados por cren�as adquiridas durante a vida. Pensamentos
                                disfuncionais e que normalmente as pessoas n�o conseguem avaliar se s�o verdadeiros ou
                                n�o devido ao tempo em que esses pensamentos negativos s�o interiorizados na mente</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <a id="accordion-faq-4" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse4">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> Sintomas da ansiedade:
                            </h4>
                        </div>
                    </a>
                    <div id="collapse4" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-4">
<p>Geralmente os sintomas f�sicos da ansiedade s�o os que mais assustam e que despertam a
                                aten��o da pessoa para buscar por tratamento. Mas a ansiedade afeta o nosso corpo, mente
                                e desempenho de v�rias formas:</p>
                            <p><strong>Sintomas emocionais:</strong>tristeza, nervosismo, irritabilidade,</p>
                            <p><strong>Sintomas fisiol�gicos:</strong> cora��o acelerado, sensa��o de formigamento,
                                falta de ar, sudorese, tontura, dor de cabe�a, dores musculares, ins�nia</p>
                            <p><strong>Sintomas comportamentais:</strong> impulsividade, agressividade, fala acelerada;
                            </p>
                            <p><strong>Sintomas cognitivos:</strong> dificuldade de concentra��o e tomada de decis�o,
                                preocupa��es excessivas.</p>
                            <p>Um sentimento pertinente que faz parte da crise de ansiedade � a preocupa��o. Conforme os
                                sintomas f�sicos v�o aumentando, o psicol�gico entra em estado de alerta e tens�o. Nessa
                                hora, o fluxo de pensamentos � bem maior e o conte�do desses pensamentos � sempre
                                negativo.</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <a id="accordion-faq-5" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse5">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> Como tratar a ansiedade:
                            </h4>
                        </div>
                    </a>
                    <div id="collapse5" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-5">
<p>Existem diferentes formas e maneiras de tratar a ansiedade. Dentre elas, podemos listar
                                terapias, medicamentos.</p>
                            <h4>Terapias</h4>
                            <p></p><strong> Terapia Cognitivo-Comportamental</strong></p>
                            <p>A terapia cognitivo-comportamental (TCC) � uma terapia de curto prazo e a mais amplamente
                                utilizada para transtornos de ansiedade. As pesquisas mostram que a TCC � eficaz no
                                tratamento do transtorno do p�nico, fobias, transtorno de ansiedade social e transtorno
                                de ansiedade generalizada, entre muitas outras condi��es.</p>
                            <p>A TCC aborda padr�es negativos e distor��es na forma como olhamos para o mundo e para n�s
                                mesmos. Como o nome sugere, isso envolve dois componentes principais:</p>
                            <p>A <strong>terapia cognitiva</strong> examina como os pensamentos negativos e as cogni��es
                                contribuem para a ansiedade;</p>
                            <p>A <strong>terapia comportamental</strong> examina como voc� se comporta e reage em
                                situa��es que provocam ansiedade;</p>
                            <p>A premissa b�sica da TCC � que nossos pensamentos afetam a maneira como nos sentimos. Em
                                outras palavras, n�o � a situa��o em que voc� est�, que determina como voc� se sente,
                                mas a sua percep��o da situa��o.</p>
                            <p>Um mesmo evento, por exemplo, pode levar a emo��es completamente diferentes em pessoas
                                diferentes. Tudo depende das nossas expectativas individuais, atitudes e cren�as. Para
                                as pessoas com transtornos de ansiedade, as formas negativas de pensar estimulam as
                                emo��es negativas da ansiedade e do medo.</p>
                            <p>O objetivo da terapia cognitivo-comportamental para a ansiedade � identificar e corrigir
                                esses pensamentos e cren�as negativas.</p>
                            <p>A ideia � que, se voc� mudar a maneira como pensa, pode mudar a maneira como se sente.
                                Trata-se do pensamento desafiador - tamb�m conhecido como reestrutura��o cognitiva - que
                                � o processo no qual voc� desafia os padr�es de pensamento negativo que contribuem para
                                sua ansiedade, substituindo-os por pensamentos mais positivos e realistas.</p>
                            <br>

                            <h4>Medicamentos</h4>
                            <p>Diferentes medicamentos s�o usados ??no tratamento de transtornos de ansiedade, incluindo
                                os tradicionais medicamentos ansiol�ticos (normalmente prescritos para uso em curto
                                prazo) e antidepressivos (geralmente como uma solu��o de ansiedade de longo prazo).
                                Essas drogas podem proporcionar al�vio tempor�rio, mas possuem efeitos colaterais e
                                trazem algumas preocupa��es relevantes com a seguran�a.</p>
                            <p>Elas tamb�m n�o s�o uma cura. Na verdade, h� muitas d�vidas sobre sua efic�cia a longo
                                prazo. Al�m disso, pode ser muito dif�cil abandonar os medicamentos de ansiedade sem
                                per�odos dif�ceis de abstin�ncia, que incluem a ansiedade de rebote que pode ser pior do
                                que o problema original.</p>
                            <p>Ent�o, como fazer se voc� est� sofrendo? Mesmo quando o al�vio da ansiedade vem com
                                efeitos colaterais e perigos, isso pode parecer uma troca justa quando o p�nico e o medo
                                est�o dominando sua vida.</p>
                            <p>A verdade � que h� um tempo e lugar para a medica��o de ansiedade. Se voc� tem ansiedade
                                grave que est� interferindo na sua capacidade de funcionar, a medica��o pode ser �til,
                                especialmente como tratamento de curto prazo. No entanto, muitas pessoas usam medica��o
                                anti-ansiedade quando a terapia, o exerc�cio ou outras estrat�gias de autoajuda
                                funcionam t�o bem quanto ou melhor, e anda n�o teriam as desvantagens.</p>
                            <p>Medicamentos para ansiedade podem aliviar os sintomas, mas eles n�o s�o a melhor e nem a
                                �nica solu��o. O uso de rem�dios s� � recomendado quando prescritos e indicados por
                                m�dicos e especialistas, pois podem causar depend�ncia e efeitos colaterais.</p>
                            <p>Os principais rem�dios para ansiedade s�o:</p>
                            <p>Bupropiona</p>
                            <p>Paroxetina</p>
                            <p>Fluoxetina</p>
                            <p>Centralia</p>
                            <p>Rivotril - especialmente para quem tem dificuldade de dormir</p>
                            <p>Ritalina - especialmente para quem tem dificuldade de concentra��o</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <a id="accordion-faq-6" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse6">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> Como controlar a ansiedade:
                            </h4>
                        </div>
                    </a>
                    <div id="collapse6" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-6">
<p>Todos os seres humanos sentem ansiedade. Em muitos casos ela pode ser ben�fica, como
                                quando faz uma pessoa a estudar para uma prova dif�cil ou for�a algu�m a fugir do
                                perigo. Embora seja normal sentir um pouco de ansiedade com situa��es dif�ceis e
                                preocupa��es com a vida, �s vezes pode ser dif�cil lidar com ela, gerando aquela
                                sensa��o de estar sobrecarregado. Abaixo, fornecemos uma lista de dicas e estrat�gias te
                                ajudar a evitar que sua ansiedade atinja um n�vel prejudicial. Mesmo que nem todos lutem
                                contra um dist�rbio de ansiedade alto, estrat�gias para ajudar a alivi�-la e lidar com a
                                ansiedade "normal" do dia a dia podem te ajudar a viver a vida que voc� deseja.</p>

                            <p><strong>Estrat�gias de Relaxamento</strong></p>
                            <p>Estrat�gias de relaxamento, como a respira��o profunda diafragm�tica, demonstraram
                                diminuir a press�o arterial, desacelerar a freq��ncia card�aca e reduzir a tens�o
                                comumente associada ao estresse. Praticar estrat�gias de relaxamento regularmente pode
                                te dar as ferramentas necess�rias para reduzir a ansiedade, permitindo que seu corpo
                                mude do estado ansioso para um estado mais relaxado e calmo em resposta a
                                estressores.</p>

                            <p>A visualiza��o guiada � outra estrat�gia de relaxamento que pode ajudar a reduzir ou
                                prevenir uma ansiedade destrutiva. A visualiza��o guiada utiliza uma mentaliza��o
                                direcionada para criar o relaxamento. Isso pode envolver imaginar a sua praia favorita
                                ou um jardim tranquilo que ir�o distra�-lo do seu estado ansioso e permitir que sua
                                mente e corpo se concentrem nos pensamentos e sensa��es positivas do exerc�cio
                                imag�tico.</p>

                            <p>Aprender a utilizar estrat�gias de relaxamento como uma estrat�gia de lidar com a
                                ansiedade pode aumentar sua confian�a de que voc� ser� capaz de lidar com a ansiedade
                                durante situa��es angustiantes. As estrat�gias de relaxamento s�o uma �tima ferramenta
                                para a preven��o da ansiedade porque s�o gratuitas, simples e geram resultados
                                instantaneamente.</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <a id="accordion-faq-2" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> O que � o CVV (Centro de
                                Valoriza��o da Vida)?
                            </h4>
                        </div>
                    </a>
                    <div id="collapse2" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-2">
                            <p>
                                O CVV ? Centro de Valoriza��o da Vida realiza apoio emocional e preven��o do suic�dio,
                                atendendo volunt�ria e gratuitamente todas as pessoas que querem e precisam conversar,
                                sob total sigilo por telefone, email e chat 24 horas todos os dias.
                            </p>
                            <p> O telefone para contato do CVV: <strong>188</strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="span12">
            <div class="container-fluid">
                <h2 class="display-4 text-center">Fale conosco</h2>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputEmail4">Nome</label>
                        <input type="text" class="form-control" id="inputEmail4" placeholder="Digite seu nome">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputPassword4">Email</label>
                        <input type="email" class="form-control" id="inputPassword4" placeholder="Digite seu e-mail">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputPassword4">Telefone</label>
                        <input type="tel" class="form-control" id="inputPassword4" placeholder="Digite seu telefone">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Mensagem</label>
                    <textarea class="form-control" id="message" name="message" placeholder="Fale um pouco sobre você" rows="5"></textarea>

                </div>
                <button type="button" class="btn btn-info btn-rounded btn-sm waves-effect waves-light float-right">Enviar</button>
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