/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JdbcUtility;

/**
 *
 * @author Ashraf Aiman
 */
@WebServlet(name = "userRegisterServlet", urlPatterns = {"/userRegisterServlet"})
public class userRegisterServlet extends HttpServlet {
    
    private JdbcUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "webappdb";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JdbcUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
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
  
        HttpSession session = request.getSession();
     
        
        //GET data form 
        String name = request.getParameter("name");
        String age = request.getParameter ("age");
        String birthdate = request.getParameter ("birthdate");
        String gender = request.getParameter ("gender");
        String address = request.getParameter ("address");
        String city = request.getParameter("city");
        String poscode = request.getParameter ("poscode");
        String className = request.getParameter ("className");
        String course = request.getParameter ("course");
        String notel = request.getParameter ("notel");
        
         try{
            
            String sqlInsert = "INSERT INTO user(name, age, birthdate, gender, address, city, poscode, className, course, notel) VALUES(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement (sqlInsert);
            ps.setString (1, name);
            ps.setString (2, age);
            ps.setString (3, birthdate);
            ps.setString (4, gender);
            ps.setString (5, address);
            ps.setString (6, city);
            ps.setString (7, poscode);
            ps.setString (8, className);
            ps.setString (9, course);
            ps.setString (10, notel);
            ps.executeUpdate();
           
        }
        
        catch(SQLException ex){
            
        }
            response.sendRedirect (request.getContextPath() + "/index.html?"+name);
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
