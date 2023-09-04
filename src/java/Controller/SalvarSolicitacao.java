/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ParticipanteDAOImpl;
import DAO.SolicitacaoDAOImpl;
import Model.Participante;
import Model.Solicitacao;
import Util.Utilitarios;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aluno
 */
public class SalvarSolicitacao extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // varíavel de erro
            String mensagem = "";
            int solicitacao_cadastrada = 0;
            Solicitacao oSolicitacao = new Solicitacao();

            // atribui nos vetores os valores adicionados pelas linhas dinâmicas
            String[] nomecompleto_participanteS = request.getParameterValues("nomecompleto_participante");
            String[] cpf_participanteS = request.getParameterValues("cpf_participante");
            String[] vinculo_participanteS = request.getParameterValues("vinculo_participante");

            //------------------------------- PRÉ-VERIFICAÇÕES
            int qtdParticipantesTotais = nomecompleto_participanteS.length + 1;
            if ((qtdParticipantesTotais < 9) || (qtdParticipantesTotais > 30)) {
                mensagem = "<span class='main' style='color: red;'>O número de participantes deve ser entre 10 e 30</span>";

            } else {
                //------------------------------- INSERÇÕES

                Timestamp timestamp = new Timestamp(System.currentTimeMillis());

                // Insere a solicitação 
                oSolicitacao.setDatahora_solicitacao(timestamp.getTime());
                oSolicitacao.setQtdhorasutilizacao_solicitacao(Integer.parseInt(request.getParameter("qtdhorasutilizacao_solicitacao")));
                oSolicitacao.setDatahorainicioutilizacao_solicitacao(Utilitarios.converteDateTimeLocalparaTimestamp(request.getParameter("datahorainicioutilizacao_solicitacao")));
                SolicitacaoDAOImpl oSolicitacaoDAOImpl = new SolicitacaoDAOImpl();
                solicitacao_cadastrada = oSolicitacaoDAOImpl.inserir(oSolicitacao);

                // Cria o array dos participantes
                List<Participante> listadeParticipantes = new ArrayList<>();

                // Insere o participante representante na lista (solicitante do formulário)
                Participante oParticipanteSolicitante = new Participante();
                oParticipanteSolicitante.setNomecompleto_participante(request.getParameter("nomecompleto_participanteSolicitante"));
                oParticipanteSolicitante.setCpf_participante(request.getParameter("cpf_participanteSolicitante"));
                oParticipanteSolicitante.setCurso_participante(request.getParameter("curso_participanteSolicitante"));
                oParticipanteSolicitante.setSolicitante_participante(true);
                oParticipanteSolicitante.setVinculo_participante("-");
                oParticipanteSolicitante.setSolicitacao_participante(new Solicitacao(solicitacao_cadastrada));
                listadeParticipantes.add(oParticipanteSolicitante);

                // adiciona os demais participantes na lista
                for (int i = 0; i < nomecompleto_participanteS.length; i++) {
                    Participante oParticipanteadd = new Participante();
                    oParticipanteadd.setNomecompleto_participante(nomecompleto_participanteS[i]);
                    oParticipanteadd.setCpf_participante(cpf_participanteS[i]);
                    oParticipanteadd.setCurso_participante("-");
                    oParticipanteadd.setSolicitante_participante(false);
                    oParticipanteadd.setVinculo_participante(vinculo_participanteS[i]);
                    oParticipanteadd.setSolicitacao_participante(new Solicitacao(solicitacao_cadastrada));
                    //
                    listadeParticipantes.add(oParticipanteadd);
                }

                // Insere a lista de todos participante no banco de dados
                for (int i = 0; i < listadeParticipantes.size(); i++) {
                    ParticipanteDAOImpl participanteDAOImpl = new ParticipanteDAOImpl();
                    participanteDAOImpl.inserir(listadeParticipantes.get(i));
                }
            }

            //verifica se há mensagem restritiva
            if (mensagem.equals("")) {
                request.setAttribute("mensagem", "<script> alert('Solicitação realizada com sucesso. Anote o código de protocolo da solicitação: #" + String.format("%06d", solicitacao_cadastrada) + "')</script>");
            } else {
                request.setAttribute("mensagem", mensagem);
            }

            request.getRequestDispatcher("salvar-solicitacao.jsp").forward(request, response);

        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
