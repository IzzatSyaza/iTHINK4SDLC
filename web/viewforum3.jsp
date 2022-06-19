<%-- 
    Document   : viewforum1
    Created on : Dec 19, 2020, 11:25:06 PM
    Author     : User
--%>

<%@page import="java.lang.String"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="jdbc.*"%>
<%@page import="java.sql.*"%>
<%@page import='db.*'%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>iTHINK4SDLC FORUM 1.3</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
                    table,th,td
{
   border:2px solid black;
}

table
{
   border-collapse:collapse;
   width:92%;
   margin: auto;
}

td
{
   height:80px;
   font-size: 25px;
   color: white;
   text-align: center;
      
}

#title{
    text-align: left;
}

tr
{
    background-color:#116466;
    height: 80px;
}

th
{
    background-color:#116466;
    color:white;
    text-align: center;
    font-size: 30px;
}

#box
{
    background-color:#116466;
    border: 1px solid black;
    width:92%;
}
  </style>
    </head>
   
    <body style="background-color: #c2feff;">
            <div id="tophead">
        <%@ include file="parts/header.jsp"%> 
    </div>
    <div style="padding-top: 10%"></div>
        <table>
        <tr>
            <td colspan="3"><h2 style="color: white; text-align: center; padding-top: 1px;">Forum 3: Topik 1.3 Menghasilkan Satu Projek Mini Berdasarkan Situasi Penyelesaian Masalah Dengan Merujuk Fasa Pembangunan Atur Cara</h2></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:left;">
                <!--create forum button-->
                <div class="btn-group" style="font-size: 17px;">
                    <a href="forumlist.jsp"><button class="createforum circular"> Back</button></a>
                        </div>
                        <%if(session.getAttribute("login") != null){%>
                        <div class="btn-group" style="font-size: 17px">
                        <a href="createforum3.jsp"><button class="createforum circular"> + Create Forum</button></a>
                    </div> 
                <%}%>
            </td>
        </tr>
        
                <tr style="text-align: center;">
                    <th> Tajuk Forum </th>
                    <th> Tarikh Dibuat </th>
                    <th> Dibuat Oleh </th>
                </tr>

            <%
            //try {
            
            Class.forName("com.mysql.jdbc.Driver"); //load driver
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root",""); //create connection
            // roll number arraylist
             ArrayList<String> email = new ArrayList<String>(); 

             // name arraylist
             ArrayList<String> name = new ArrayList<String>();

             // marks arraylist
             ArrayList<String> date = new ArrayList<String>();

             // title arraylist
             ArrayList<String> title = new ArrayList<String>();
             
             // phone number arraylist
             ArrayList<String> noreplies = new ArrayList<String>();

            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery("Select * from forum_3");
            while(rs.next()){
                email.add(rs.getString("email"));
                date.add(rs.getString("date"));
                title.add(rs.getString("title"));
            }

            for(int i = 0 ; i < email.size();i++){
                String getdetails = "Select * from login where email = '" + email.get(i) +"'";
                rs = statement.executeQuery(getdetails);
                while(rs.next()){
                    name.add(rs.getString("firstname") + " " + rs.getString("lastname"));
                }
            }
            for(int i = 0 ; i < email.size();i++){
      %>
        <tr> 
            <td id="title"> <b><a href="./viewreply3.jsp?title=<%= title.get(i)%>" style="color: #f2f2f2"><%=title.get(i)%></a></b> </td> 
            <td> <%= date.get(i)%> </td>
            <td> <%=name.get(i)%> </td>
        </tr>
    
        <!--<div id="box">
            <h2 style="color: white; margin-left: 10px;text-align: left;"> <a href="./viewreply.jsp?title=<%// title.get(i)%>"><%//= title.get(i)%></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp; <%//= date.get(i)%> &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp; <%//=name.get(i)%></h2>
        </div>-->
        
            <%}%>
    </table>
          <br>
          <br>
          <br>
          <br><br><br><br>
          
             <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>     
        
</body>
    
</html>
