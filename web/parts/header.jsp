<%-- 
    Document   : header
    Created on : Dec 12, 2020, 12:20:41 PM
    Author     : pichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root",""); //create connection
}catch(Exception e)
{
	out.println(e);
}
%>
<% if(session.getAttribute("login") != null){
%>
<!--Header-->
    <!-- Just an image -->
    <nav class="navbar navbar-dark" style='background-color:#116466;'>
        <a class="navbar-brand" href="index.jsp">
            <img src="./images/Logo.png" width="200" height="60" alt="">
        </a>
            <div class="topnav-centered">
                <a style="color:#f2f2f2;">HAENA<br>"IT TAKES BOTH SIDES TO BUILD A BRIDGE" - Fredrik Nael</a>
            </div>
        <div class="topnav" >
            <a href="userProfile.jsp">

        <%
            try
            {
                String emails = (String)session.getAttribute("login");
                    Class.forName("com.mysql.jdbc.Driver"); //load driver

                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root",""); //create connection
                    Statement statement = con.createStatement();
                    String sql = "select firstname from login where email = " +"'" +emails+"'";
                    ResultSet resultset = statement.executeQuery(sql);
                    if(resultset.next()){
                       out.println("SELAMAT DATANG, " + resultset.getString("firstname")); 
                       session.setAttribute("login", emails);
                    }
  
            }catch(Exception e)
            {
                    out.println(e);
            }
	%>
        </a>
        <a href="logout.jsp">LOG KELUAR</a>
        </div>        
    </nav>
        <!--style="background-color:#50d1d4"-->
        
           <nav style="background-color: #1f8f91;">
        <div class="topnav" >
            <div class="navbar-nav" style="position:fixed;">
            <div class="dropdown">
                <input type="button" class="dropbtn"  value="Nota" onclick="home()">
            </button>
            <div class="dropdown-content" >
            <a href="./Topic1.jsp">Topik 1.1 Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Atur Cara</a>
            <a href="./Topic2.jsp">Topik 1.2 Pelaporan Pengunaan Pemikiran Komputasional Bagi Setiap Fasa Pembangunan Atur Cara</a>
            <a href="./Topic3.jsp">Topik 1.3 Menghasilkan Satu Projek Mini Berdasarkan Situasi Penyelesaian Masalah Dengan Merujuk Fasa Pembangunan Atur Cara</a>
            
            </div>
            
            </div>
            </div>
            <a href="./mainQuiz.jsp" style="padding: 14px 16px; margin-left: 79px;">Kuiz</a>
            <a href="./ViewPerformance.jsp" style="padding: 14px 16px;">Prestasi</a>
            <a href="./forumlist.jsp" style="padding: 14px 16px;">Forum</a>
        </div>
    </nav> 
 <!--Header End--> 
 <% }
%> 
<!--close if-->

 <% if(session.getAttribute("login") == null){
%>
    <!-- Just an image -->
    <nav class="navbar navbar-dark" style='background-color:#116466;'>
        <a class="navbar-brand" href="index.jsp">
            <img src="./images/Logo.png" width="200" height="60" alt="">
        </a>
            <div class="topnav-centered">
                <a style="color:#f2f2f2;">HAENA<br>"IT TAKES BOTH SIDES TO BUILD A BRIDGE" - Fredrik Nael</a>
            </div>
        <div class="topnav" >
            <a href="login.jsp">LOG MASUK</a>
            <a href="register.jsp">DAFTAR</a>
        </div>        
    </nav>
    
               <nav style="background-color: #1f8f91;">
        <div class="topnav">
            <div class="navbar-nav" style="position:fixed;">
            <div class="dropdown">
                <div>
                <input type="button" class="dropbtn" value="Nota" onclick="home()">
                
                </div>
            <div class="dropdown-content" >
            <a  href="./Topic1.jsp">Topik 1.1 Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Atur Cara</a>
            <a href="./Topic2.jsp">Topik 1.2 Pelaporan Pengunaan Pemikiran Komputasional Bagi Setiap Fasa Pembangunan Atur Cara</a>
            <span style="z-index: 99;"><a href="./Topic3.jsp">Topik 1.3 Menghasilkan Satu Projek Mini Berdasarkan Situasi Penyelesaian Masalah Dengan Merujuk Fasa Pembangunan Atur Cara</a></span>
            </div>
            </div>
            </div>
            <a href="./mainQuiz.jsp" style="padding: 14px 16px;margin-left: 79px">Kuiz</a>
            <a href="./ViewPerformance.jsp" style="padding: 14px 16px;">Prestasi</a>
            <a href="./forumlist.jsp" style="padding: 14px 16px;">Forum</a>
        </div>
    </nav> 
    <% } %>
    <script>
        function home(){
            window.location.replace("index.jsp");
        }
    </script>
