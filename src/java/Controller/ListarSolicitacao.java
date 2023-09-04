/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.GenericDAO;
import DAO.SolicitacaoDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aluno
 */
@WebServlet(name = "ListarSolicitacao", urlPatterns = {"/ListarSolicitacao"})
public class ListarSolicitacao extends HttpServlet {

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
            SolicitacaoDAOImpl oSolicitacaoDAOImplPendente = new SolicitacaoDAOImpl();
            request.setAttribute("solicitacoesPendente", oSolicitacaoDAOImplPendente.listarPorStatus("Pendente"));
            
            SolicitacaoDAOImpl oSolicitacaoDAOImplPago = new SolicitacaoDAOImpl();
            request.setAttribute("solicitacoesPago", oSolicitacaoDAOImplPago.listarPorStatus("Pago"));
            
            SolicitacaoDAOImpl oSolicitacaoDAOImplAprovadoRejeitado = new SolicitacaoDAOImpl();
            request.setAttribute("solicitacoesAprovadoRejeitado", oSolicitacaoDAOImplAprovadoRejeitado.listarPorStatus("Rejeitado' or status_solicitacao like 'Aprovado"));

            request.getRequestDispatcher("listar-solicitacao.jsp").forward(request, response);
        }catch(Exception e) {
            System.out.println(
            "Erro ao listar solicitacaoCTR "+ e.getMessage());
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
