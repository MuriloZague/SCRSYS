<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.Participante"%>
<%@page import="Model.Solicitacao"%>
<%@page import="java.util.List"%>
<%@page import="Model.Solicitacao"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.time.ZoneId"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" class="disable-onload-scroll">
    <head>

        <!-- Basic -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Listas | SCRSystem</title>
        <link rel="icon" type="image/x-icon" href="img/faviconSCRS.ico">

        <meta name="keywords" content="WebSite Template" />
        <meta name="description" content="Porto - Multipurpose Website Template">
        <meta name="author" content="okler.net">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

        <!-- Web Fonts  -->
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

        <!-- Head Libs -->
        <script src="vendor/modernizr/modernizr.min.js"></script>

    </head>
    <body class="loading-overlay-showing" data-plugin-page-transition data-loading-overlay data-plugin-options="{'hideDelay': 0, 'effect': 'pulse'}">
        <div class="loading-overlay">
            <div class="bounce-loader">
                <div class="wrapper-pulse">
                    <div class="cssload-pulse-loader"></div>
                </div>
            </div>
        </div>

        <div class="body">



            <div role="main" class="main">

                <section class="section section-concept section-no-border section-dark section-angled section-angled-reverse pt-5 m-0" style="background-image: url(img/backgroundIMG.jpg); background-size: cover; background-position: center; min-height: 300px;">
                    <div class="section-angled-layer-bottom section-angled-layer-increase-angle bg-light" style="padding: 8rem 0;"></div>
                </section>

                <div id="examples" class="container py-2">

                    <div class="row">

                        <div class="col">

                            <div class="tabs tabs-bottom tabs-center tabs-simple">


                                <ul class="nav nav-tabs">

                                    <li class="nav-item">
                                        <a class="nav-link active" href="#tabsNavigationSimpleIcons1" data-bs-toggle="tab">
                                            <span class="featured-boxes featured-boxes-style-6 p-0 m-0">
                                                <span class="featured-box featured-box-primary featured-box-effect-6 p-0 m-0">
                                                    <span class="box-content p-0 m-0">
                                                        <i class="icon-featured fa-solid fa-file-lines"></i>
                                                    </span>
                                                </span>
                                            </span>									
                                            <p class="mb-0 pb-0">Pendente</p>
                                        </a>
                                    </li>


                                    <li class="nav-item">
                                        <a class="nav-link" href="#tabsNavigationSimpleIcons2" data-bs-toggle="tab">
                                            <span class="featured-boxes featured-boxes-style-6 p-0 m-0">
                                                <span class="featured-box featured-box-primary featured-box-effect-6 p-0 m-0">
                                                    <span class="box-content p-0 m-0">
                                                        <i class="icon-featured fa-solid fa-file-invoice-dollar"></i>
                                                    </span>
                                                </span>
                                            </span>									
                                            <p class="mb-0 pb-0">Pago</p>
                                        </a>
                                    </li>


                                    <li class="nav-item">
                                        <a class="nav-link" href="#tabsNavigationSimpleIcons3" data-bs-toggle="tab">
                                            <span class="featured-boxes featured-boxes-style-6 p-0 m-0">
                                                <span class="featured-box featured-box-primary featured-box-effect-6 p-0 m-0">
                                                    <span class="box-content p-0 m-0">
                                                        <i class="icon-featured fa-solid fa-file-signature"></i>
                                                    </span>
                                                </span>
                                            </span>									
                                            <p class="mb-0 pb-0">Aprovado/Rejeitado</p>
                                        </a>
                                    </li>

                                </ul>


                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabsNavigationSimpleIcons1">
                                        <div class="text-center">
                                            <h4>Pendente</h4>

                                            <div class="accordion accordion-modern-status accordion-modern-status-primary" id="accordion100">
                                                <%
                                                    int numeroAccordion = 0;
                                                    List<Solicitacao> listaSolicitacoesPendente = (List<Solicitacao>) request.getAttribute("solicitacoesPendente");

                                                    for (Solicitacao solicitacao : listaSolicitacoesPendente) {
                                                        numeroAccordion = numeroAccordion + 1;
                                                %>
                                                <div class="card card-default">
                                                    <div class="card-header" id="collapse100Heading<%=numeroAccordion%>">
                                                        <h4 class="card-title m-0">
                                                            <a class="accordion-toggle text-color-dark font-weight-bold collapsed" data-bs-toggle="collapse" data-bs-target="#collapse100<%=numeroAccordion%>" aria-expanded="false" aria-controls="collapse100<%=numeroAccordion%>">
                                                                ID Solicitação: <%=String.format("%06d", solicitacao.getId_solicitacao())%>
                                                                <br>
                                                                Solicitante: <%=solicitacao.getParticipantes().get(0).getNomecompleto_participante()%>
                                                                <br>
                                                                <% SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy HH:mm");%>
                                                                Data Solicitada: <%=dateFormat.format(solicitacao.getDatahora_solicitacao())%>
                                                                <br>
                                                                <%
                                                                    long epoch = solicitacao.getDatahorainicioutilizacao_solicitacao();
                                                                    Date date = new Date(epoch * 1000L);
                                                                    dateFormat.setTimeZone(TimeZone.getTimeZone("GMT")); // Define o fuso horário como GMT
                                                                    String formattedDate = dateFormat.format(date);
                                                                %>
                                                                Horário agendado: <%= formattedDate%> por <%=solicitacao.getQtdhorasutilizacao_solicitacao()%>h
                                                                <br>
                                                            </a>
                                                    </div>
                                                    <div>
                                                        <a href="AlterarStatusSolicitacao?novostatus=Pago&id_solicitacao=<%=solicitacao.getId_solicitacao()%>" style="background-color: #0088CC; padding: 10px; width: 150px" class="btn btn-modern btn-dark btn-swap-1">
                                                            <span>Pago <i class="fas fa-arrow-right ms-2"></i></span>
                                                            <span><i class="fas fa-arrow-right-long"></i></span>
                                                        </a>
                                                    </div>
                                                    </h4>
                                                    <div id="collapse100<%=numeroAccordion%>" class="collapse" aria-labelledby="collapse100Heading<%=numeroAccordion%>" data-bs-parent="#accordion100">
                                                        <div class="card-body">
                                                            <table class="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th>
                                                                            #
                                                                        </th>
                                                                        <th>
                                                                            Nome completo
                                                                        </th>
                                                                        <th>
                                                                            CPF
                                                                        </th>
                                                                        <th>
                                                                            Curso
                                                                        </th>
                                                                        <th>
                                                                            Vínculo
                                                                        </th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        int numeroParticipante = 0;
                                                                        for (Participante participante : solicitacao.getParticipantes()) {
                                                                            numeroParticipante = numeroParticipante + 1;
                                                                    %>
                                                                    <tr>
                                                                        <td>
                                                                            #<%=numeroParticipante%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getNomecompleto_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getCpf_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getCurso_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getVinculo_participante()%>
                                                                        </td>
                                                                    </tr>
                                                                    <%
                                                                        }
                                                                    %>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%
                                                    }


                                                %>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="tab-pane" id="tabsNavigationSimpleIcons2">
                                        <div class="text-center">
                                            <h4>Pago</h4>

                                            <div class="accordion accordion-modern-status accordion-modern-status-primary" id="accordion100">
                                                <%                                                    List<Solicitacao> listaSolicitacoesPago = (List<Solicitacao>) request.getAttribute("solicitacoesPago");
                                                    for (Solicitacao solicitacao : listaSolicitacoesPago) {
                                                        numeroAccordion = numeroAccordion + 1;
                                                %>
                                                <div class="card card-default">
                                                    <div class="card-header" id="collapse100Heading<%=numeroAccordion%>">
                                                        <h4 class="card-title m-0">
                                                            <a class="accordion-toggle text-color-dark font-weight-bold collapsed" data-bs-toggle="collapse" data-bs-target="#collapse100<%=numeroAccordion%>" aria-expanded="false" aria-controls="collapse100<%=numeroAccordion%>">
                                                                ID Solicitação: <%=String.format("%06d", solicitacao.getId_solicitacao())%>
                                                                <br>
                                                                Solicitante: <%=solicitacao.getParticipantes().get(0).getNomecompleto_participante()%>
                                                                <br>
                                                                CPF: <%=solicitacao.getParticipantes().get(0).getCpf_participante()%>
                                                            </a>
                                                    </div>
                                                    <div>
                                                        <a href="AlterarStatusSolicitacao?novostatus=Aprovado&id_solicitacao=<%=solicitacao.getId_solicitacao()%>" style="padding: 10px; background-color: #6dcf98; width: 150px; margin-right: 20px" class="btn btn-modern btn-dark btn-swap-1">
                                                            <span>Aprovado <i class="fas fa-arrow-right ms-2"></i></span>
                                                            <span><i class="fas fa-arrow-right-long"></i></span>
                                                        </a>
                                                        <a href="AlterarStatusSolicitacao?novostatus=Rejeitado&id_solicitacao=<%=solicitacao.getId_solicitacao()%>" style="padding: 10px; background-color: #e04f4f; width: 150px; margin-left: 20px" class="btn btn-modern btn-dark btn-swap-1">
                                                            <span>Rejeitado <i class="fas fa-arrow-right ms-2"></i></span>
                                                            <span><i class="fas fa-arrow-right-long"></i></span>
                                                        </a>
                                                    </div>
                                                    </h4>
                                                    <div id="collapse100<%=numeroAccordion%>" class="collapse" aria-labelledby="collapse100Heading<%=numeroAccordion%>" data-bs-parent="#accordion100">
                                                        <div class="card-body">
                                                            <table class="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th>
                                                                            #
                                                                        </th>
                                                                        <th>
                                                                            Nome completo
                                                                        </th>
                                                                        <th>
                                                                            CPF
                                                                        </th>
                                                                        <th>
                                                                            Curso
                                                                        </th>
                                                                        <th>
                                                                            Vínculo
                                                                        </th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        int numeroParticipante = 0;
                                                                        for (Participante participante : solicitacao.getParticipantes()) {
                                                                            numeroParticipante = numeroParticipante + 1;
                                                                    %>
                                                                    <tr>
                                                                        <td>
                                                                            #<%=numeroParticipante%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getNomecompleto_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getCpf_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getCurso_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getVinculo_participante()%>
                                                                        </td>
                                                                    </tr>
                                                                    <%
                                                                        }
                                                                    %>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%
                                                    }


                                                %>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="tab-pane" id="tabsNavigationSimpleIcons3">
                                        <div class="text-center">
                                            <h4>Aprovado/Rejeitado</h4>


                                            <div class="accordion accordion-modern-status accordion-modern-status-primary" id="accordion100">
                                                <%                                                    List<Solicitacao> listaSolicitacoesAprovadoRejeitado = (List<Solicitacao>) request.getAttribute("solicitacoesAprovadoRejeitado");

                                                    for (Solicitacao solicitacao : listaSolicitacoesAprovadoRejeitado) {
                                                        numeroAccordion = numeroAccordion + 1;
                                                %>
                                                <div class="card card-default">
                                                    <div class="card-header" id="collapse100Heading<%=numeroAccordion%>">
                                                        <h4 class="card-title m-0">
                                                            <a class="accordion-toggle text-color-dark font-weight-bold collapsed" data-bs-toggle="collapse" data-bs-target="#collapse100<%=numeroAccordion%>" aria-expanded="false" aria-controls="collapse100<%=numeroAccordion%>">
                                                                ID Solicitação: <%=String.format("%06d", solicitacao.getId_solicitacao())%>
                                                                <br>
                                                                Solicitante: <%=solicitacao.getParticipantes().get(0).getNomecompleto_participante()%>
                                                                <br>
                                                                CPF: <%=solicitacao.getParticipantes().get(0).getCpf_participante()%>
                                                            </a>
                                                            <span style="color: #0088CC">
                                                                <%=solicitacao.getStatus_solicitacao()%>
                                                            </span>
                                                        </h4>
                                                    </div>
                                                    <div id="collapse100<%=numeroAccordion%>" class="collapse" aria-labelledby="collapse100Heading<%=numeroAccordion%>" data-bs-parent="#accordion100">
                                                        <div class="card-body">
                                                            <table class="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th>
                                                                            #
                                                                        </th>
                                                                        <th>
                                                                            Nome completo
                                                                        </th>
                                                                        <th>
                                                                            CPF
                                                                        </th>
                                                                        <th>
                                                                            Curso
                                                                        </th>
                                                                        <th>
                                                                            Vínculo
                                                                        </th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        int numeroParticipante = 0;
                                                                        for (Participante participante : solicitacao.getParticipantes()) {
                                                                            numeroParticipante = numeroParticipante + 1;
                                                                    %>
                                                                    <tr>
                                                                        <td>
                                                                            #<%=numeroParticipante%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getNomecompleto_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getCpf_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getCurso_participante()%>
                                                                        </td>
                                                                        <td>
                                                                            <%=participante.getVinculo_participante()%>
                                                                        </td>
                                                                    </tr>
                                                                    <%
                                                                        }
                                                                    %>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%
                                                    }


                                                %>

                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr class="solid my-5">
                        </div>
                    </div>

                </div>

            </div>

            <footer id="footer" class="bg-color-dark-scale-2 border border-end-0 border-start-0 border-bottom-0 border-color-light-3 mt-0">
                <div class="copyright bg-dark py-4">
                    <div class="container text-center py-2">
                        <p class="mb-0 text-2">Copyright 2023 - Matheus Coltro - All Rights Reserved</p>
                    </div>
                </div>
            </footer>
        </div>

        <!-- Vendor -->
        <script src="vendor/plugins/js/plugins.min.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="js/theme.js"></script>

        <!-- Theme Initialization Files -->
        <script src="js/theme.init.js"></script>

    </body>
</html>