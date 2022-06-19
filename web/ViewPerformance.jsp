<%-- 
    Document   : ViewPerformance
    Created on : Dec 15, 2020, 9:49:13 PM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC PRESTASI ANDA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<!-- Blue Color
#4A7DAD
#2f5492
#006697

#25274D
#29648A
#2E9CCA
-->
<style>
    
.Performance 
{
	text-align:center;
	font-family:DoppioOne;
	color: #116466;
        margin-top: 8%;
}
table, th, td 
{
  border: 1px solid black;
  border-collapse: collapse;
  /*width: 100%;*/
  text-align: left;
  padding: 16px;
}
table.center 
{
  margin-left: auto; 
  margin-right: auto;
}

</style>
</head>


<body style="background-color: #c2feff;">
    <!-- Just an image -->
    <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
<%if((String)session.getAttribute("login") != null){%>
    <br>
    <br>
    <br>
    <div class="container-fluid">
    <div class="Performance"> 
  
          <h2>PRESTASI ANDA</h2>
          <br>
          <br>
        <table class="center table">
            <thead class="thead-dark">
                <tr>
                    <th scope ="col" style="width:2%;"><strong>No.</strong></th>
                    <th scope ="col" style="width:90%;"><strong>Subtopik</strong></th>
                    <th scope ="col" style="width:90%;"><strong>Skor</strong></th>
                    <th scope ="col" style="width:100%;"><strong>Percubaan</strong></th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope ="row">1.</th>
                    <td>Topik 1.1 Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Atur Cara</td>
                    <td> <%                   
     try{
                
            String paramName;
            String paramValue[];
    
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
              
            Enumeration paramNames = request.getParameterNames();
            String ans = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
            
            stmt = con.createStatement();
            
            String email = (String)session.getAttribute("login");
            
            
            rs = stmt.executeQuery("select marks from markquiz1 where email = '" + email + "'");
                
             
             if(rs.next())
                {
                    String un = rs.getString(1);
                    out.println(un + "/3");                              
                }
             else{
                 out.println("Belum Cuba");
             }
            }
             
            catch(Exception e)
            {
                out.println("Belum Cuba");
            }
                    %> </td>
                    <td><a href="./AttemptQuiz.jsp">Percubaan</a></td>
                </tr>
                 <tr>
                     <th scope="row">2.</th>
                    <td>Topik 1.2 Pelaporan Pengunaan Pemikiran Komputasional Bagi Setiap Fasa Pembangunan Atur Cara</td>
                    <td><%                   
     try{
                
            String paramName;
            String paramValue[];
    
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
              
            Enumeration paramNames = request.getParameterNames();
            String ans = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
            
            stmt = con.createStatement();
            String email = (String)session.getAttribute("login");
            
            
            rs = stmt.executeQuery("select marks from markquiz2 where email = '" + email + "'");
             
             if(rs.next())
                {
                    String un = rs.getString(1);
                    out.println(un + "/3");                              
                } 
            else{
                 out.println("Belum Cuba");
             }
            }
             
            catch(Exception e)
            {
                out.println("Belum Cuba");
            }
                    %></td>
                    <td><a href="./AttemptQuiz2.jsp">Percubaan</a></td>
                </tr>
            </tbody>
            
        </table>     
          <br>
          <br>
    </div>
 </div>
<%}else{%>
    <script>
        alert('Anda perlu log masuk untuk mengakses prestasi anda');
        window.location = './index.jsp';
    </script>
<%}%>
<footer id="site-footer">
<%@ include file="parts/footer.jsp"%>
</footer>  
</body>
</html>

