<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <!-- Basic -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Protocolo | SCRSystem</title>
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
                                                    <a class="dropdown-item dropdown-toggle" href="salvar-solicitacao.jsp">
                                                        Reserva
                                                    </a>
                                                </li>
                                                
                                                <li class="dropdown">
                                                    <a class="dropdown-item dropdown-toggle active" href="consultar-protocolo.jsp">
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

                <form method="POST" action="ConsultarProtocolo">
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
                                        <h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold" style="text-decoration: underline;">CONSULTA DE NÚMERO DE PROTOCOLO</strong></h2>
                                    </center>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-lg-12">

                                <%
                                    if (request.getAttribute("status") != null) {
                                %>
                                <div class="overflow-hidden mb-4 pb-3">
                                    <p class="mb-0" style=" text-align: center;">Insira o código de protocolo informado referente à solicitação da quadra.</p>
                                </div>
                                <div class="overflow-hidden mb-4 pb-3">
                                    <p class="mb-0" style=" text-align: justify;">
                                        <br>
                                        Número de protocolo: 
                                        <input type="number" class="form-control text-3 h-auto py-2" name="id_solicitacao" required style="display: initial; width: 100px; margin-bottom: 20px; margin-top: 20px">
                                    </p>
                                </div>
                                <div class="overflow-hidden mb-4 pb-3">
                                    <p class="mb-0" style=" text-align: justify;">Sua solicitação está classificada como: <mark class="text-white text-3 ${classdacor}">${status}</mark></p>
                                    <p class="mb-0" style=" text-align: justify;"> <mark class="text-3">${complementostatus}</mark></p>
                                </div>
                                <div class="form-group col">
                                    <input style="margin-top: 50px; margin-bottom: 50px" type="submit" value="Consultar" class="btn btn-primary btn-modern" data-loading-text="Loading...">
                                </div>
                                <%
                                } else {
                                %>
                                <div class="overflow-hidden mb-4 pb-3">
                                    <p class="mb-0" style=" text-align: center;">Insira o código de protocolo informado referente à solicitação da quadra.</p>
                                </div>
                                <div class="overflow-hidden mb-4 pb-3">
                                    <p class="mb-0" style=" text-align: justify;">
                                        <br>Número de protocolo: 
                                        <input type="number" maxlength="7" class="form-control text-3 h-auto py-2" name="id_solicitacao" required style="display: initial; width: 130px; margin-bottom: 20px; margin-top: 20px">
                                    </p>
                                </div>
                                <div class="form-group col">
                                    <input style="margin-top: 40px; margin-bottom: 15px" type="submit" value="Consultar" class="btn btn-primary btn-modern" data-loading-text="Loading...">
                                </div>
                                <%
                                    }
                                %>

                            </div>

                        </div>



                    </div>
                </form>

                <footer id="footer" class="bg-color-dark-scale-2 border border-end-0 border-start-0 border-bottom-0 border-color-light-3 mt-0">
                    <div class="copyright bg-dark py-4">
                        <div class="container text-center py-2">
                            <p class="mb-0 text-2">Copyright 2023 - Matheus Coltro - All Rights Reserved</p>
                        </div>
                    </div>
                </footer>

                <!-- Plugins -->
                <script src="vendor/plugins/js/plugins.min.js"></script>

                <!-- Themes -->
                <script src="js/theme.js"></script>

                <!-- Model -->
                <script src="js/examples/examples.forms.js"></script>

                <!-- Theme Init -->
                <script src="js/theme.init.js"></script>

            </div>

    </body>
</html>