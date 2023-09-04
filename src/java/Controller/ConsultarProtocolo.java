/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.SolicitacaoDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aluno
 */
@WebServlet(name = "ConsultarProtocolo", urlPatterns = {"/ConsultarProtocolo"})
public class ConsultarProtocolo extends HttpServlet {

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

        int id_solicitacao = Integer.parseInt(request.getParameter("id_solicitacao"));
        String status = "";

        try {
            SolicitacaoDAOImpl solicitacaoDAOImpl = new SolicitacaoDAOImpl();
            status = solicitacaoDAOImpl.consultarStatusPorID(id_solicitacao);

        } catch (Exception ex) {
            Logger.getLogger(ConsultarProtocolo.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (status.equals("Pendente")) {
            request.setAttribute("complementostatus", "Encaminhe-se à secretaria escolar e realize o pagamento para finalizar sua solicitação.");
            request.setAttribute("classdacor", "bg-color-dark");
        }
        
        if (status.equals("Pago")) {
            request.setAttribute("complementostatus", "Aguarde a autorização, por favor.");
            request.setAttribute("classdacor", "bg-color-primary");
        }
        
        if (status.equals("Aprovado")) {
            request.setAttribute("complementostatus", "Bom jogo!");
            request.setAttribute("classdacor", "bg-success");
        }
        
        if (status.equals("Rejeitado")) {
            request.setAttribute("complementostatus", "Para mais informações, entre em contato com a secretaria escolar.");
            request.setAttribute("classdacor", "bg-color-secondary");
        }
        
        if (status.equals("")) {
            request.setAttribute("complementostatus", "Número de protocolo incorreto. Tente novamente.");
            request.setAttribute("classdacor", "");
        }

        request.setAttribute("status", status);
        request.getRequestDispatcher("consultar-protocolo.jsp").forward(request, response);
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
