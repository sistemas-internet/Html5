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
            <p>Permite que o usuÃ¡rio encontre as respostas para as suas perguntas com mais rapidez e facilidade</p>
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
                                <i class="fas fa-question-circle" aria-hidden="true"></i> Oque é Ansiedade?
                            </h4>
                        </div>
                    </a>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-1">
                            <p>
Ansiedade é a reação natural do corpo ao stress. É um estado emocional caracterizado por
                                sentimentos de tensão, preocupação e pensamentos ruins. É importante ressaltar que nem
                                sempre a ansiedade é uma doença. A ansiedade em seu estado normal é saudável para o
                                indivíduo, pois ela o impulsiona para realizar projetos, prosperar e planejar o futuro.
                                O que se torna alarmante é o excesso desse sentimento.
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
<p>Existem várias teorias e até mesmo crenças sobre onde e como surgiu a ansiedade.
                                Predisposição genética, fatores ambientais e até mesmo histórico familiar são algumas
                                das centenas possibilidades de origem da ansiedade. Apesar de não ser a mesma causa para
                                todas as pessoas, alguns fatores são bem comuns:</p>
                            <p>O enorme tabu sobre saúde mental no ambiente de trabalho. Precisamos quebrar esse tabu e
                                isso não será feito de uma hora para a outra.</p>
                            <p>Fatores ambientais como pressão no trabalho e situações familiares. Esses fatores podem
                                gerar uma preocupação constante a ponto de evoluir de uma ansiedade comum e natural para
                                um quadro mais sério de transtorno;</p>
                            <p>Fatores emocionais gerados por crenças adquiridas durante a vida. Pensamentos
                                disfuncionais e que normalmente as pessoas não conseguem avaliar se são verdadeiros ou
                                não devido ao tempo em que esses pensamentos negativos são interiorizados na mente</p>
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
<p>Geralmente os sintomas físicos da ansiedade são os que mais assustam e que despertam a
                                atenção da pessoa para buscar por tratamento. Mas a ansiedade afeta o nosso corpo, mente
                                e desempenho de várias formas:</p>
                            <p><strong>Sintomas emocionais:</strong>tristeza, nervosismo, irritabilidade,</p>
                            <p><strong>Sintomas fisiológicos:</strong> coração acelerado, sensação de formigamento,
                                falta de ar, sudorese, tontura, dor de cabeça, dores musculares, insônia</p>
                            <p><strong>Sintomas comportamentais:</strong> impulsividade, agressividade, fala acelerada;
                            </p>
                            <p><strong>Sintomas cognitivos:</strong> dificuldade de concentração e tomada de decisão,
                                preocupações excessivas.</p>
                            <p>Um sentimento pertinente que faz parte da crise de ansiedade é a preocupação. Conforme os
                                sintomas físicos vão aumentando, o psicológico entra em estado de alerta e tensão. Nessa
                                hora, o fluxo de pensamentos é bem maior e o conteúdo desses pensamentos é sempre
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
                            <p>A terapia cognitivo-comportamental (TCC) é uma terapia de curto prazo e a mais amplamente
                                utilizada para transtornos de ansiedade. As pesquisas mostram que a TCC é eficaz no
                                tratamento do transtorno do pânico, fobias, transtorno de ansiedade social e transtorno
                                de ansiedade generalizada, entre muitas outras condições.</p>
                            <p>A TCC aborda padrões negativos e distorções na forma como olhamos para o mundo e para nós
                                mesmos. Como o nome sugere, isso envolve dois componentes principais:</p>
                            <p>A <strong>terapia cognitiva</strong> examina como os pensamentos negativos e as cognições
                                contribuem para a ansiedade;</p>
                            <p>A <strong>terapia comportamental</strong> examina como você se comporta e reage em
                                situações que provocam ansiedade;</p>
                            <p>A premissa básica da TCC é que nossos pensamentos afetam a maneira como nos sentimos. Em
                                outras palavras, não é a situação em que você está, que determina como você se sente,
                                mas a sua percepção da situação.</p>
                            <p>Um mesmo evento, por exemplo, pode levar a emoções completamente diferentes em pessoas
                                diferentes. Tudo depende das nossas expectativas individuais, atitudes e crenças. Para
                                as pessoas com transtornos de ansiedade, as formas negativas de pensar estimulam as
                                emoções negativas da ansiedade e do medo.</p>
                            <p>O objetivo da terapia cognitivo-comportamental para a ansiedade é identificar e corrigir
                                esses pensamentos e crenças negativas.</p>
                            <p>A ideia é que, se você mudar a maneira como pensa, pode mudar a maneira como se sente.
                                Trata-se do pensamento desafiador - também conhecido como reestruturação cognitiva - que
                                é o processo no qual você desafia os padrões de pensamento negativo que contribuem para
                                sua ansiedade, substituindo-os por pensamentos mais positivos e realistas.</p>
                            <br>

                            <h4>Medicamentos</h4>
                            <p>Diferentes medicamentos são usados ??no tratamento de transtornos de ansiedade, incluindo
                                os tradicionais medicamentos ansiolíticos (normalmente prescritos para uso em curto
                                prazo) e antidepressivos (geralmente como uma solução de ansiedade de longo prazo).
                                Essas drogas podem proporcionar alívio temporário, mas possuem efeitos colaterais e
                                trazem algumas preocupações relevantes com a segurança.</p>
                            <p>Elas também não são uma cura. Na verdade, há muitas dúvidas sobre sua eficácia a longo
                                prazo. Além disso, pode ser muito difícil abandonar os medicamentos de ansiedade sem
                                períodos difíceis de abstinência, que incluem a ansiedade de rebote que pode ser pior do
                                que o problema original.</p>
                            <p>Então, como fazer se você está sofrendo? Mesmo quando o alívio da ansiedade vem com
                                efeitos colaterais e perigos, isso pode parecer uma troca justa quando o pânico e o medo
                                estão dominando sua vida.</p>
                            <p>A verdade é que há um tempo e lugar para a medicação de ansiedade. Se você tem ansiedade
                                grave que está interferindo na sua capacidade de funcionar, a medicação pode ser útil,
                                especialmente como tratamento de curto prazo. No entanto, muitas pessoas usam medicação
                                anti-ansiedade quando a terapia, o exercício ou outras estratégias de autoajuda
                                funcionam tão bem quanto ou melhor, e anda não teriam as desvantagens.</p>
                            <p>Medicamentos para ansiedade podem aliviar os sintomas, mas eles não são a melhor e nem a
                                única solução. O uso de remédios só é recomendado quando prescritos e indicados por
                                médicos e especialistas, pois podem causar dependência e efeitos colaterais.</p>
                            <p>Os principais remédios para ansiedade são:</p>
                            <p>Bupropiona</p>
                            <p>Paroxetina</p>
                            <p>Fluoxetina</p>
                            <p>Centralia</p>
                            <p>Rivotril - especialmente para quem tem dificuldade de dormir</p>
                            <p>Ritalina - especialmente para quem tem dificuldade de concentração</p>
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
<p>Todos os seres humanos sentem ansiedade. Em muitos casos ela pode ser benéfica, como
                                quando faz uma pessoa a estudar para uma prova difícil ou força alguém a fugir do
                                perigo. Embora seja normal sentir um pouco de ansiedade com situações difíceis e
                                preocupações com a vida, às vezes pode ser difícil lidar com ela, gerando aquela
                                sensação de estar sobrecarregado. Abaixo, fornecemos uma lista de dicas e estratégias te
                                ajudar a evitar que sua ansiedade atinja um nível prejudicial. Mesmo que nem todos lutem
                                contra um distúrbio de ansiedade alto, estratégias para ajudar a aliviá-la e lidar com a
                                ansiedade "normal" do dia a dia podem te ajudar a viver a vida que você deseja.</p>

                            <p><strong>Estratégias de Relaxamento</strong></p>
                            <p>Estratégias de relaxamento, como a respiração profunda diafragmática, demonstraram
                                diminuir a pressão arterial, desacelerar a freqüência cardíaca e reduzir a tensão
                                comumente associada ao estresse. Praticar estratégias de relaxamento regularmente pode
                                te dar as ferramentas necessárias para reduzir a ansiedade, permitindo que seu corpo
                                mude do estado ansioso para um estado mais relaxado e calmo em resposta a
                                estressores.</p>

                            <p>A visualização guiada é outra estratégia de relaxamento que pode ajudar a reduzir ou
                                prevenir uma ansiedade destrutiva. A visualização guiada utiliza uma mentalização
                                direcionada para criar o relaxamento. Isso pode envolver imaginar a sua praia favorita
                                ou um jardim tranquilo que irão distraí-lo do seu estado ansioso e permitir que sua
                                mente e corpo se concentrem nos pensamentos e sensações positivas do exercício
                                imagético.</p>

                            <p>Aprender a utilizar estratégias de relaxamento como uma estratégia de lidar com a
                                ansiedade pode aumentar sua confiança de que você será capaz de lidar com a ansiedade
                                durante situações angustiantes. As estratégias de relaxamento são uma ótima ferramenta
                                para a prevenção da ansiedade porque são gratuitas, simples e geram resultados
                                instantaneamente.</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <a id="accordion-faq-2" class="accordion-link-perfil" data-toggle="collapse"
                       data-parent="#accordion2" href="#collapse2">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="fas fa-question-circle" aria-hidden="true"></i> O que é o CVV (Centro de
                                Valorização da Vida)?
                            </h4>
                        </div>
                    </a>
                    <div id="collapse2" class="panel-collapse collapse">
                        <div class="panel-body" id="accordion-content-2">
                            <p>
                                O CVV ? Centro de Valorização da Vida realiza apoio emocional e prevenção do suicídio,
                                atendendo voluntária e gratuitamente todas as pessoas que querem e precisam conversar,
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
                    <textarea class="form-control" id="message" name="message" placeholder="Fale um pouco sobre vocÃª" rows="5"></textarea>

                </div>
                <button type="button" class="btn btn-info btn-rounded btn-sm waves-effect waves-light float-right">Enviar</button>
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