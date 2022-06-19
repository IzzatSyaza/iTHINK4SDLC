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
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import jdbc.JdbcUtility;
/**
 *
 * @author User
 */
@WebServlet(name = "UserInsertForum2Servlet", urlPatterns = {"/UserInsertForum2Servlet"})
public class UserInsertForum2Servlet extends HttpServlet {
    
    private JdbcUtility jdbcUtility;
    
    @Override
    //this method run once only for the servlet lifecycle
    //when the servlet loaded the first time in Glassfish/Tomcat
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
        
        
        //prepare the statement once only
        //for the entire servlet lifecycle
        jdbcUtility.prepareSQLStatementInsertForum1();
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
       
       
        HttpSession session = request.getSession();
        String title = request.getParameter("title");
        String message = request.getParameter("message");
        String email = (String)session.getAttribute("login");
                    
         try {    
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
            Statement st = con.createStatement();
            String selecttitledb = "Select title from forum_2";
            ResultSet rs;
            rs = st.executeQuery(selecttitledb);
            while(rs.next()){
                if(title.equals(rs.getString("title"))){
                    throw new java.lang.Exception("Forum diambil");
                }
            }
            PreparedStatement ps =  con.prepareStatement("INSERT INTO forum_2(email,title, date, question)" +
                                      " VALUES(?,?, NOW(), ?)"); 
            PrintWriter out = response.getWriter();
            ps.setString(1, email);
            ps.setString(2, title);
            ps.setString(3, message);
            
            int insertStatus = 0;
            insertStatus = ps.executeUpdate();
            
            
            out.println(email);
            out.println(insertStatus);
            
            if (insertStatus == 1) {
                out.println("<script>");
                out.println("    alert('Forum dibuat');");
                out.println("    window.location = './viewforum2.jsp'");
                out.println("</script>");
            }
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
            out.println("    alert('Forum tidak dapat dibuat. Tajuk forum telah diambil.');");
            out.println("    window.location = './viewforum2.jsp'");
            out.println("</script>");            
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
            
            PrintWriter out = response.getWriter();
            
            out.println("<script>");
            out.println("    alert('Forum tidak dapat dibuat. Tajuk forum telah diambil.');");
            out.println("    window.location = './viewforum2.jsp'");
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
