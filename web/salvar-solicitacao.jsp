<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="pt-br"> 
    <head>

        <!-- Basic -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Reserva | SCRSystem</title>
        <link rel="icon" type="image/x-icon" href="img/faviconSCRS.ico">

        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

        <link id="googleFonts" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CShadows+Into+Light&display=swap" rel="stylesheet" type="text/css">

        <!-- Vendor CSS -->
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="vendor/animate/animate.compat.css">
        <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css">
        <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css">
        <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css">

        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/theme.css">
        <link rel="stylesheet" href="css/theme-elements.css">
        <link rel="stylesheet" href="css/theme-blog.css">
        <link rel="stylesheet" href="css/theme-shop.css">

        <!-- Skin CSS -->
        <link id="skinCSS" rel="stylesheet" href="css/skins/default.css">

        <!-- Theme Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!-- Head Libs -->
        <script src="vendor/modernizr/modernizr.min.js"></script>

    <section class="section section-concept section-no-border section-dark section-angled section-angled-reverse pt-5 m-0" style="background-image: url(img/backgroundHeaderMain.png); background-size: cover; background-position: center; min-height: 300px;">
        <div class="section-angled-layer-bottom section-angled-layer-increase-angle bg-light" style="padding: 8rem 0;"></div>
        <header id="header" class="header-transparent header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': false, 'stickyStartAt': 70, 'stickyChangeLogo': false, 'stickyHeaderContainerHeight': 70}">
            <div class="header-body border-top-0 bg-dark box-shadow-none">
                <div class="header-container container-fluid">
                    <div class="header-row p-relative px-0">
                        <div class="header-column w-100 ms-2 ms-xl-5 ps-2 pe-lg-3">
                            <div class="header-row justify-content-end justify-content-lg-start">
                                <div class="header-nav header-nav-links header-nav-light-text justify-content-lg-start">
                                    <div class="header-nav-main header-nav-main-square header-nav-main-dropdown-no-borders header-nav-main-mobile-dark header-nav-main-dropdown-border-radius header-nav-main-text-capitalize header-nav-main-text-size-5 header-nav-main-arrows header-nav-main-effect-1 header-nav-main-sub-effect-1">

                                        <nav class="collapse">

                                            <ul class="nav nav-pills" id="mainNav">

                                                <li class="dropdown">
                                                    <a>
                                                        <h4>Sports  Court  Reservation  System</h4>
                                                    </a>
                                                </li>

                                                <li class="dropdown">
                                                    <a>
                                                        <h4>  |  </h4>
                                                    </a>
                                                </li>

                                                <li class="dropdown">
                                                    <a class="dropdown-item dropdown-toggle" href="index.jsp">
                                                        Home
                                                    </a>
                                                </li>

                                                <li class="dropdown dropdown-mega">
                                                    <a class="dropdown-item dropdown-toggle active" href="salvar-solicitacao.jsp">
                                                        Reserva
                                                    </a>
                                                </li>

                                                <li class="dropdown">
                                                    <a class="dropdown-item dropdown-toggle" href="consultar-protocolo.jsp">
                                                        Protocolo
                                                    </a>
                                                </li>

                                                <li class="dropdown">
                                                    <a>
                                                        <h4>  |  </h4>
                                                    </a>
                                                </li>

                                            </ul>

                                        </nav>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </section>

</head>
<body class="loading-overlay-showing" data-plugin-page-transition data-loading-overlay data-plugin-options="{'hideDelay': 0, 'effect': 'pulse'}">
    <div class="loading-overlay">
        <div class="bounce-loader">
            <div class="wrapper-pulse">
                <div class="cssload-pulse-loader">
                    <div class="notes">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="body">

        <div role="main" class="main">

            <form id="principalform" method="POST" action="SalvarSolicitacao">
                <div id="examples" class="container py-2">

                    <div class="row">
                        <div class="col-lg-12 order-1 order-lg-2">
                            <img src="img/CabecalhoLogos.svg" style="width: 100%;">
                        </div>
                    </div>

                    <hr style="background: black; height: 2px;"> 

                    <div class="row">

                        <div class="col-lg-12 order-1 order-lg-2">

                            <div class="overflow-hidden mb-1">
                                <center>
                                    <h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold" style="text-decoration: underline;">RESERVA DA QUADRA DE ESPORTES</strong></h2>
                                </center>
                            </div>

                            <div class="overflow-hidden mb-4 pb-3">
                                <p class="mb-0" style=" text-align: justify;">Para a reserva da quadra � necess�rio preencher corretamente os dados abaixo e realizar o respectivo pagamento na Secretaria da ETEC com, <b>no m�nimo, um dia de anteced�ncia</b> do hor�rio pretendido para a reserva da quadra.</p>
                            </div>

                            <div class="overflow-hidden mb-1">
                                <center>
                                    <h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-bold">TERMO DE RESPONSABILIDADE</strong></h2>
                                </center>
                            </div>

                            <div class="overflow-hidden mb-4 pb-3">
                                <p class="mb-0" style=" text-align: justify;">
                                    <input value="${participante.id_participante}" type="hidden" name="id_participante">
                                    Eu,
                                    <input type="text" maxlength="500" class="form-control text-3 h-auto py-2" name="nomecompleto_participanteSolicitante" value="${participante.nomecompleto_participante}" required style="display: initial; width: 300px; line-height: 0.5px" placeholder="(Nome completo)">
                                    , do curso

                                    <label for="curso_participante" value="${participante.curso_participante}"></label>
                                    <select name="curso_participanteSolicitante" class="form-control text-3 h-auto py-2" style="display: initial; width: 200px; line-height: 17px" required>
                                        <option value="" disabled selected>Escolha um curso</option>

                                        <option value="" disabled></option>

                                        <option value="" disabled>-Ensino M�dio-</option>
                                        <option value="1� Jur�dico">1� Jur�dico</option>
                                        <option value="1� Linguagens">1� Linguagens</option>
                                        <option value="1� Matem�tica">1� Matem�tica</option>
                                        <option value="1� Qu�mica">1� Qu�mica</option>
                                        <option value="2� Exatas">2� Exatas</option>
                                        <option value="2� Jur�dico">2� Jur�dico</option>
                                        <option value="2� Linguagens">2� Linguagens</option>
                                        <option value="2� Qu�mica">2� Qu�mica</option>
                                        <option value="3� Exatas">3� Exatas</option>
                                        <option value="3� Jur�dico">3� Jur�dico</option>
                                        <option value="3� Linguagens">3� Linguagens</option>
                                        <option value="3� Qu�mica">3� Qu�mica</option>

                                        <option value="" disabled></option>

                                        <option value="" disabled>-Cursos t�cnicos-</option>
                                        <option value="Administra��o">Administra��o</option>
                                        <option value="A��car e �lcool">A��car e �lcool</option>
                                        <option value="Contabilidade">Contabilidade</option>
                                        <option value="Eletrot�cnica">Eletrot�cnica</option>
                                        <option value="Farm�cia">Farm�cia</option>
                                        <option value="Inform�tica">Inform�tica</option>
                                        <option value="Infonet">Inform�tica para Internet</option>
                                        <option value="Log�stica">Log�stica</option>
                                        <option value="Marketing">Marketing</option>
                                        <option value="Seguran�a Do Trabalho">Seguran�a do Trabalho</option>

                                        <option value="" disabled></option>

                                        <option value="" disabled>-Outros-</option>
                                        <option value="Egresso">Egresso</option>
                                        <option value="Funcion�rio">Funcion�rio</option>
                                        <option value="Novotec">Novotec</option>
                                        <option value="Professor">Professor</option></select>

                                    , inscrito no CPF sob o n�mero:
                                    <input type="text" maxlength="11" class="form-control text-3 h-auto py-2" name="cpf_participanteSolicitante" value="${participante.cpf_participante}" required style="display: initial; width: 125px; line-height: 0.5px" placeholder="(S� n�meros)">
                                    venho, mediante este instrumento, com natureza jur�dica de comodato, solicitar o empr�stimo da quadra de esportes no hor�rio abaixo. Comprometo-me a cuidar, com o
                                    m�ximo de zelo, n�o podendo us�-lo sen�o de acordo com os fins a que se destina, sob pena de responder por perdas e danos, o seguinte bem: <b>QUADRA DE
                                        ESPORTES da ETEC de Fernand�polis</b>, respeitando as seguintes regras:
                                </p>
                            </div>

                            <ul class="list list-icons" style="margin-top: -0.8rem; margin-bottom: 1.7rem">
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>Usar somente cal�ados de solado flex�vel, sem travas ou cravos;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>N�o colocar sobre o piso da quadra cadeiras, mesas, bancos ou quais outros utens�lios que possam marcar
                                    ou perfurar o piso;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>Nunca apoiar diretamente sobre o piso elementos pontiagudos ou cortantes, que possam marc�-lo. N�o
                                    utilizar patins, skates, bicicletas, etc. sobre o piso;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i><b>Todos os participantes <u>dever�o</u> ser alunos, egressos, pais de alunos, filhos de alunos, c�njuges de alunos, 
                                        professores, filhos de professores, c�njuges de professores, funcion�rios, filhos de funcion�rios ou c�njuges de funcion�rios da ETEC de Fernand�polis;</b></li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>Todos os participantes dever�o apresentar documento com foto no exato momento de utiliza��o do ambiente;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>N�o � permitido a utiliza��o da quadra para alunos em hor�rio de aula ou que interfira na mesma;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>N�o � permitido a utiliza��o da quadra para professores e funcion�rios em hor�rios de trabalho;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i><b>Para a reserva da quadra dever�o haver, independente da modalidade esportiva, no m�nimo 10 (dez) alunos;</b></li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i>A ETEC n�o se responsabiliza pelo empr�stimo de bolas;</li>
                                <li style=" text-align: justify;"><i class="fas fa-check"></i><b>Somente ser� concretizada a reserva da quadra perante a contribui��o � APM (Associa��o de 
                                        Pais e Mestres), de <u>R$2,00</u> (dois reais) por participante a cada hora de utiliza��o.</b></li>
                            </ul>

                            <div class="overflow-hidden mb-4 pb-3">
                                <p class="mb-0" style=" text-align: justify;">
                                    Declaro para os devidos fins e a quem possa interessar que <b>GOZAMOS DE PERFEITA SA�DE</b>, isentando os, administradores, professores e a 
                                    ETEC de Fernand�polis de quaisquer les�es que porventura venha a sofrer ao utilizar a quadra, bem como fico ciente de que eventual preju�zo ao patrim�nio 
                                    p�blico deve ser ressarcido pelos usu�rios do espa�o f�sico concedido a t�tulo de comodato e pelo solicitante da quadra. Declaro tamb�m por zelar pelos demais ambientes da 
                                    quadra, tais como os sanit�rios ao t�rmino da utiliza��o. Sendo que este termo se destina apenas � utiliza��o da quadra, n�o permitindo acesso aos demais 
                                    ambientes escolares. A ETEC n�o se responsabiliza pelo furto, extravio ou roubo de bens ocorridos dentro do gin�sio de esportes e adjac�ncias.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-lg-6">

                            <div class="overflow-hidden mb-4 pb-3">
                                <p class="mb-0" style=" text-align: justify;">
                                    Hor�rio de in�cio: 
                                    <input type="datetime-local" class="form-control text-3 h-auto py-2" name="datahorainicioutilizacao_solicitacao" id="datahorainicioutilizacao_solicitacao" required style="display: inherit; width: 220px;" onchange="atualizaHorarioTermino();">

                                    � � <script>
                                        � � � � let currentDate = new Date().toISOString().slice(0, -8);
                                        � � � � document.querySelector("#datahorainicioutilizacao_solicitacao").min = currentDate;
                                    � � </script>

                                    <br> Quantidade de horas: 
                                    <input type="number" class="form-control text-3 h-auto py-2" name="qtdhorasutilizacao_solicitacao" id="qtdhorasutilizacao_solicitacao" required style="display: inherit; width: 100px;" onchange="atualizaHorarioTermino();">
                                    <br> Hor�rio de t�rmino: 
                                    <input type="text" class="form-control text-3 h-auto py-2" name="datahoraterminoutilizacao_solicitacao" id="datahoraterminoutilizacao_solicitacao" readonly style="display: inherit; width: 202px;">
                                </p>
                            </div>

                        </div>
                        <div class="col-lg-6">

                            <div class="overflow-hidden mb-4 pb-3">
                                <p class="mb-0" style=" text-align: justify;">
                                    Fernand�polis,
                                    <%
                                        Date dataagora = new java.util.Date();
                                        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                                        String dataformatada = formatter.format(dataagora);
                                    %>
                                    <input type="text" value="<%=dataformatada%>" class="form-control text-3 h-auto py-2" readonly style="display: initial; width: 400px;">
                                </p>
                                <img src="img/SCRSystem2.png" width="150px" style="margin-left: 180px; margin-top: 60px">
                            </div>

                        </div>

                    </div>

                    <br>
                    <br>

                    <hr style="background: black; height: 2px;"> 

                    <label for="participantes">Insira abaixo apenas os demais participantes:</label>
                    
                    <center>
                        <h3 class="font-weight-normal text-7 mb-0">
                            <strong class="font-weight-extra-bold" style="text-decoration: underline; line-height:90px">PARTICIPANTES</strong>
                            <span id="plus" class="btn btn-primary btn-modern" style="margin-left: 10px" onclick="addField(this)">+</span>
                        </h3>
                    </center>

                    <div id="linhadosparticipantes" name="participantes">



                    </div>

                    <div class="row">
                        <div class="form-group col">
                            <input style="margin-top: 40px; margin-bottom: 15px" type="submit" value="Solicitar" class="btn btn-primary btn-modern" data-loading-text="Loading...">
                            <br>
                        </div>
                    </div>

                </div>
            </form>

            ${mensagem}

            <footer id="footer" class="bg-color-dark-scale-2 border border-end-0 border-start-0 border-bottom-0 border-color-light-3 mt-0">
                <div class="copyright bg-dark py-4">
                    <div class="container text-center py-2">
                        <p class="mb-0 text-2">Copyright 2023 - Matheus Coltro - All Rights Reserved</p>
                    </div>
                </div>
            </footer>

            <!-- Add/Remove Player -->
            <script src="js/addremove.js"></script>

            <!-- Set-Reload -->
            <script src="js/horario.js"></script>

            <!-- Plugins -->
            <script src="vendor/plugins/js/plugins.min.js"></script>

            <!-- Themes -->
            <script src="js/theme.js"></script>

            <!-- Model -->
            <script src="js/examples/examples.forms.js"></script>

            <!-- Theme Init -->
            <script src="js/theme.init.js"></script>

        </div>
    </div>

</body>
</html>