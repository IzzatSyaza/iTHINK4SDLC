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
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(urlPatterns = {"/QuizServlet2"})
public class QuizServlet2 extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        
            
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            int cnt = 0;
            
            try{
                
                String paramName;
                String paramValue[];
                Connection con = null;
                Statement stmt = null;
                ResultSet rs = null;
                
                String ans = "";
            
                Enumeration paramNames = request.getParameterNames();
            
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
            
                stmt = con.createStatement();
                rs = stmt.executeQuery("select answer from quiz2");
            
                 while(rs.next() && paramNames.hasMoreElements())
                {
                    String un = rs.getString(1);
                    paramName = (String)paramNames.nextElement();
                    paramValue = request.getParameterValues(paramName);
                
                    for(int i=0;i<paramValue.length;i++)
                    {
                        ans = paramValue[i];
                    }
                
                    if(un.equals(ans))
                        cnt++;
                }   
            
                out.println("<h1>You have scored " + cnt + " points.");
                
                HttpSession sess = request.getSession();
                String email = (String)sess.getAttribute("login");
                

                Statement statement = con.createStatement();
                String sql = "select marks from markquiz2 where email='" + email + "'";
                ResultSet resultset = statement.executeQuery(sql);
                
                if(resultset.next())
                {
                    String sq2 = "update markquiz2 set marks=" + cnt + " where email='" + email + "'";
                
                    PreparedStatement ps2 = con.prepareStatement(sq2);             
                    ps2.execute();
                   
                }
                
                else
                {
                     String sq2 = "insert into markquiz2 values(?,?)";
                
                    PreparedStatement ps2 = con.prepareStatement(sq2);             
                
                    ps2.setString(1,email);
                    ps2.setInt(2,cnt);
                
                    ps2.execute();
                }
        
            
            }
            catch(Exception e)
            {
                out.println("");
            }
            
//           HttpSession session = request.getSession();
//        
//           session.setAttribute("cnt",cnt);
//            
//           response.sendRedirect("DoneQuiz.jsp");

            String destination = "DoneQuiz.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);
            
            Integer mark = cnt;
            request.setAttribute("mark", mark);
            
            requestDispatcher.forward(request, response);
            
            
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(QuizServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(QuizServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(QuizServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(QuizServlet.class.getName()).log(Level.SEVERE, null, ex);
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
