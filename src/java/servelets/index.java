/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MMM
 */
@WebServlet(name = "index", urlPatterns = {"/index"})
public class index extends HttpServlet {

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
            
            response.setContentType("text/html;charset=UTF-8");
         
            // implement recommended architecture request->servlet->response-->JSP
            // this code is used to analyse push of buttons in index servlet
            if (request.getParameter("mainpage_add_vendor") != null) {
                request.getRequestDispatcher("./newVendor.jsp").forward(request, response);
            } else if (request.getParameter("mainpage_list_vendors") != null) {
                request.getRequestDispatcher("./listVendors.jsp").forward(request, response);            
            } else if (request.getParameter("mainpage_del_vendor") != null) {
                request.getRequestDispatcher("./deleteVendor.jsp").forward(request, response);
            
            } else if (request.getParameter("mainpage_add_inv") != null) {
                request.getRequestDispatcher("./newInvoice.jsp").forward(request, response);                        
            } else if (request.getParameter("mainpage_pay_inv") != null){
                request.getRequestDispatcher("./payInvoice.jsp").forward(request, response);
            } else if(request.getParameter("mainpage_list_inv") != null){
                request.getRequestDispatcher("./listInvoices.jsp").forward(request, response);
            } else if(request.getParameter("mainpage_balance") != null){
                request.getRequestDispatcher("./balance.jsp").forward(request, response);
            }
            
            // if no button was pushed we delegate to the JSP the response work
            request.getRequestDispatcher("./index.jsp").forward(request, response);
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
