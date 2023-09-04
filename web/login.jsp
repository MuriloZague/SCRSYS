<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Basic -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login | SCRSystem</title>
        <link rel="icon" type="image/x-icon" href="img/faviconSCRS.ico">

        <meta name="keywords" content="WebSite Template" />
        <meta name="description" content="Porto - Multipurpose Website Template">
        <meta name="author" content="okler.net">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

        <!-- Web Fonts  -->
        <link id="googleFonts" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400&display=swap" rel="stylesheet" type="text/css">

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

    </head>
    <body data-plugin-page-transition>

        <div class="body">

            <div role="main" class="main">

                <div class="container py-4">

                    <div class="row justify-content-center">

                        <div class="col-md-6 col-lg-5 mb-5 mb-lg-0">

                            <div class="overflow-hidden mb-1 text-center">
                                <br><br><br>
                                <h1 class="font-weight-extra-bold text-15 mb-0"><strong class="font-weight-extrabold" style="text-decoration: underline;">SCRSystem</strong></h1>
                                <br><br>
                            </div>

                            <h2 class="font-weight-bold text-5 mb-0">Login</h2>

                            <form method="POST" action="LogarAdministrador">
                                <div class="row">

                                    <div class="form-group col">

                                        <label class="form-label text-color-dark text-3">Email institucional <span class="text-color-danger">  *</span></label>
                                        <input type="text" name="emailinstitucional_administrador" value="" class="form-control form-control-lg text-4" required>

                                    </div>

                                </div>


                                <div class="row">

                                    <div class="form-group col">

                                        <label class="form-label text-color-dark text-3">Senha <span class="text-color-danger">  *</span></label>
                                        <input type="password" id="myInput" name="senha_administrador" class="form-control form-control-lg text-4" required>
                                        <input type="checkbox" id="pogchamp" onclick="revealPasswd()"> Exibir senha

                                    </div>

                                </div>

                                <span style="color: red">${msglog}</span>

                                <div class="row">

                                    <div class="form-group col">
                                        <button type="submit" value="LogarAdministrador" class="btn btn-dark btn-modern w-100 text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Loading...">Login</button>
                                    </div>

                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Vendor -->
            <script src="vendor/plugins/js/plugins.min.js"></script>

            <!-- Password -->
            <script src="js/revealpasswd.js"></script>

            <!-- Theme Base, Components and Settings -->
            <script src="js/theme.js"></script>

            <!-- Theme Initialization Files -->
            <script src="js/theme.init.js"></script>

    </body>
</html>