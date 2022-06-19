package db;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import java.sql.*;
import jdbc.JdbcUtility;
/**
 *
 * @author User
 */
@WebServlet(name = "UserSelectAllForum1", urlPatterns = {"/UserSelectAllForum1"})
public class UserSelectAllForum1 extends HttpServlet {
    
    private JdbcUtility jdbcUtility;
    
    @Override
    //this method run once only for the servlet lifecycle
    //when the servlet loaded the first time in Glassfish/Tomcat
    //the next run of servlet, this method will not be executed
    public void init() throws ServletException {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "dbuser";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JdbcUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        
        //get JDC connection
        //con = jdbcUtility.jdbcGetConnection();
        
        //prepare the statement once only
        //for the entire servlet lifecycle
        jdbcUtility.prepareSQLStatementSelectAllForum1();
    }

    @Override
    //this method run once only for the servlet lifecycle
    //when the servlet unloaded in application server (Glassfish/Tomcat)
    //or when the application server shutdown
    public void destroy() {   
        jdbcUtility.jdbcConClose();
    }
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
        
        try {
            
            //get the prepared statement that is needed for jdbcutility class
            PreparedStatement ps = jdbcUtility.getPsSelectAllForum1();

	    //execute the statement
            ResultSet rs = ps.executeQuery();
            
            PrintWriter out = response.getWriter();

            //generate output for browser
            out.println("FORUM 1: TOPIC 1.1");
            
            out.println("<table border='1'>");
            out.println("  <thead>");
            out.println("    <tr>");
            out.println("      <th>Title</th>");
            out.println("      <th>Messages</th>");
            out.println("      <th>Operations</th>");
            out.println("    </tr>");
            out.println("  </thead>");
            out.println("  <tbody>");            
            
            while (rs.next()) {
                
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String message = rs.getString("message");                
                
               // String destination = "viewforum1.jsp";
               // RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);
                
                //request.setAttribute("title", title);
                //request.setAttribute("message", message);
                //request.setAttribute("date", date);
                //request.getRequestDispatcher("viewforum1.jsp").forward(request, response);
                //requestDispatcher.forward(request, response);
                
                out.println("    <tr>");
                out.println("      <td>" + title + "</td>");
                out.println("      <td>" + message + "</td>");
                out.println("      <td><a href='UserReplyForumServlet?id=" + id + "'>Reply</a><br/>"
                                    + "<a href='UserDeleteForumServlet?id=" + id + "'>Delete</a></td>");
                out.println("    </tr>");
            } 
            out.println("<script>");
            out.println("window.location.href= '/iTHINK4SDLC/viewforum1.jsp';");
            out.println("</script>");
            
            out.println("  </tbody>");
            out.println("</table>");            
        }
	catch (SQLException ex)
	{
            while (ex != null) {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
		System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException ();
		System.out.println ("");
            }
            
            PrintWriter out = response.getWriter();
            
            out.println("<script>");
            out.println("    alert('Reply forum failed');");
            out.println("</script>");            
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
            
            PrintWriter out = response.getWriter();
            
            out.println("<script>");
            out.println("    alert('Reply forum failed');");
            out.println("</script>");
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
