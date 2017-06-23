/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MMM
 */
@WebServlet(name = "deletevendor", urlPatterns = {"/deletevendor"})
public class deletevendor extends HttpServlet {

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
            throws ServletException, IOException, SQLException {response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            /* read parameters received on call */
            String code = request.getParameter("inputform_code_delete");
            
            // set connection paramters to the DB
            ResultSet resultSet = null;
            Statement statement = null;
            Connection connection = null;
            String user = "derbyremote" ;
            String password = "derbyremote";
            String url = "jdbc:derby://localhost/ebooks2;create=true;";
            String driver = "org.apache.derby.jdbc.ClientDriver40";
            try
            {
                Class driverClass = Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
                statement = connection.createStatement();
                
                String DML = "delete from vendors where code='"+code+"'";
                PreparedStatement pstmnt = connection.prepareStatement(DML);

                pstmnt.execute();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Insert succeeds!</title>");   
                out.println("<meta charset=\"UTF-8\">");   
                out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"); 
                out.println("<link rel=\"stylesheet\" type=\"text/css\" href= \"vendors.css\">");
                out.println("</head>");
                out.println("<body>");
                out.println("<h3> Delteted</h3>");
                out.println("<br><hr>");
                out.println("Code: "+code+" <br>");
                out.println("<form action=\"index.jsp\" method=\"post\">");
                out.println("<input type=\"submit\" class=\"citybutton\" name=\"mainpage_newebook\" value=\"Back\">");
                out.println("</form>");
                out.println("</body>");
                out.println("</html>");
            }
            catch (ClassNotFoundException | SQLException ex)
            {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Payment failed</title>");   
                out.println("<meta charset=\"UTF-8\">");   
                out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"); 
                out.println("<link rel=\"stylesheet\" type=\"text/css\" href= \"vendors.css\">");
                out.println("</head>");
                out.println("<body>");
                out.println("<h3> Delete failed</h3>");
                out.println("<br>");
                ex.printStackTrace(out);
                out.println("</body>");
                out.println("</html>");
                throw new SQLException();
                
            }
            finally
            {
                if (resultSet != null)
                {
                    try
                    {
                        resultSet.close();
                    }
                    catch (Exception ex){}
                }
                if (statement != null)
                {
                    try
                    {
                        statement.close();
                    }
                    catch (Exception ex){}
                }	
                if (connection != null)
                {
                    try
                    {
                        connection.close();
                    }
                    catch (Exception ex){}
                }
            }

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(insertvendor.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(insertvendor.class.getName()).log(Level.SEVERE, null, ex);
        }
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
