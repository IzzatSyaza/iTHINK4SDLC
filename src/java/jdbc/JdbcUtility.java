/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.sql.*;

/**
 *
 * @author GATES
 */
public class JdbcUtility {
    
    Connection con = null;
    String driver;
    String url;
    String userName;
    String password;
    
    PreparedStatement psInsertForum1 = null;
    PreparedStatement psInsertForum2 = null;
    PreparedStatement psInsertForum3 = null;
    PreparedStatement psSelectAllForum1 = null;
    PreparedStatement psSelectForumById = null;
    PreparedStatement psReplyForumById = null;  
    //PreparedStatement psDeleteStudentById = null;  
   
    public JdbcUtility(String driver,
                       String url,
                       String userName,
                       String password) {
        this.driver = driver;
        this.url = url;
        this.userName = userName;
        this.password = password;
    }
    
    public  void jdbcConnect(){
        
        try {
         
            Class.forName (driver);
            con = DriverManager.getConnection(url, userName, password);
            DatabaseMetaData dma = con.getMetaData ();
            System.out.println("\nConnected to " + dma.getURL());
            System.out.println("Driver       " + dma.getDriverName());
            System.out.println("Version      " + dma.getDriverVersion());
            System.out.println("");
            
	}
	catch (SQLException ex){
            
            while (ex != null){
		System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
		System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException ();
		System.out.println ("");
            }

            System.out.println("Connection to the database error");
	}
	catch (java.lang.Exception ex){
            ex.printStackTrace ();
	}
    }
    
    public Connection jdbcGetConnection(){
        return con;
    }
    
    public void jdbcConClose(){
        
   	try {
         con.close();
   	}
   	catch (Exception ex){
            ex.printStackTrace ();
        }
        
    }
    
    public void prepareSQLStatementInsertForum1(){
        
        try {
           
            //create SQL statement
            String sqlInsertForum1 = "INSERT INTO forum_1(email,title, date, question)" +
                                      " VALUES(?,?, NOW(), ?)";            
            
            //prepare statement
            psInsertForum1 = con.prepareStatement(sqlInsertForum1);            
        }
        catch (SQLException ex) {
            ex.printStackTrace ();
        }
    }
    
        public void prepareSQLStatementInsertForum2(){
        
        try {
           
            //create SQL statement
            String sqlInsertForum2 = "INSERT INTO forum_2(email,title, date, question)" +
                                      " VALUES(?,?, NOW(), ?)";            
            
            //prepare statement
            psInsertForum2 = con.prepareStatement(sqlInsertForum2);            
        }
        catch (SQLException ex) {
            ex.printStackTrace ();
        }
    }
                public void prepareSQLStatementInsertForum3(){
        
        try {
           
            //create SQL statement
            String sqlInsertForum3 = "INSERT INTO forum_3(email,title, date, question)" +
                                      " VALUES(?,?, NOW(), ?)";            
            
            //prepare statement
            psInsertForum3 = con.prepareStatement(sqlInsertForum3);            
        }
        catch (SQLException ex) {
            ex.printStackTrace ();
        }
    }
    
    public PreparedStatement getPsInsertForum1(){
        return psInsertForum1;
    }
        public PreparedStatement getPsInsertForum2(){
        return psInsertForum2;
    }
            public PreparedStatement getPsInsertForum3(){
        return psInsertForum3;
    }
    
    //SelectAllForum
    public void prepareSQLStatementSelectAllForum1(){
        
        try {
           
            //create SQL statement
            String sqlSelectAllForum1 = "SELECT * FROM forum_1";            
            
            //prepare statement
            psSelectAllForum1 = con.prepareStatement(sqlSelectAllForum1);            
        }
        catch (SQLException ex) {
            ex.printStackTrace ();
        }
    }
    
    public PreparedStatement getPsSelectAllForum1(){
        return psSelectAllForum1;
    }
    
    
    public void prepareSQLStatementSelectForumById(){
        
        try {
           
            //create SQL statement
            String sqlSelectForumById = "SELECT *" + 
                                          " FROM forum_1" +
                                          " WHERE id = ?";            
            
            //prepare statement
            psSelectForumById = con.prepareStatement(sqlSelectForumById);            
        }
        catch (SQLException ex) {
            ex.printStackTrace ();
        }
    }
    
    public PreparedStatement getPsSelectForumById(){
        return psSelectForumById;
    }
    
    public void prepareSQLStatementReplyForumById(){
        
        try {
           
            //create SQL statement
            String sqlReplyForumById =    "UPDATE forum_1" +
                                          " set reply = ?," +
                                          " WHERE id = ?";            
            
            //prepare statement
            psReplyForumById = con.prepareStatement(sqlReplyForumById);            
        }
        catch (SQLException ex) {
            ex.printStackTrace ();
        }
    }

    public PreparedStatement getPsReplyForumById(){
        return psReplyForumById;
    }
}