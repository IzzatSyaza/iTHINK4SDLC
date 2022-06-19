/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pichu
 */
@WebServlet(urlPatterns = {"/EditServlet"})
public class EditServlet extends HttpServlet {

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
            //HttpSession
            HttpSession session = request.getSession();
            //fetch all data
            String address = request.getParameter("address");
            String firstname = request.getParameter("first_name");
            String lastname = request.getParameter("last_name");
            String mobileno = request.getParameter("mobile");
            String gender = request.getParameter("gender");
            
            
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            //Database Connection
            try
            {
                Class.forName("com.mysql.jdbc.Driver"); //load driver
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root",""); //create connection
               String emails =(String)session.getAttribute("login");
               Statement statement = con.createStatement();
               String sql = "select email from login where email = " +"'" +emails+"'";
               ResultSet resultset = statement.executeQuery(sql);
                if(resultset.next()){
                PreparedStatement pstmt = null;
                    if(firstname.equals("")){
                        response.sendRedirect("userProfile.jsp");  
                    }else if(lastname.equals("")){
                        response.sendRedirect("userProfile.jsp");
                    }else if(gender==null){
                        response.sendRedirect("userProfile.jsp");
                    } 
                    else
                    {
                        pstmt=con.prepareStatement("UPDATE login SET firstname=?,lastname=? where email = " +"'" +emails+"'"); //sql insert query
                        pstmt.setString(1,firstname);
                        pstmt.setString(2,lastname);
                        pstmt.executeUpdate();
                        pstmt=con.prepareStatement("UPDATE profiledb SET address=?,mobileno=?,gender=?,profilepicture=? where email = " +"'" +emails+"'"); //sql insert query
                        pstmt.setString(1,address);
                        pstmt.setString(2,mobileno);
                        pstmt.setString(3,gender);
                        if(gender.equals("Male")){
                            pstmt.setString(4, "./pics/male.png");
                        }else{
                            pstmt.setString(4, "./pics/female.png");
                        }
                        int updatestatus = pstmt.executeUpdate();
                        if(updatestatus == 1){
                            out.println("<script>");
                            out.println("    alert('Profile Updated');");
                            out.println("    window.location = './userProfile.jsp'");
                            out.println("</script>");
//                     response.sendRedirect("userProfile.jsp");
                        }

                    }
                }
            }catch(Exception e)
            {
                out.println(e);
            }

            
            out.println("</body>");
            out.println("</html>");
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
