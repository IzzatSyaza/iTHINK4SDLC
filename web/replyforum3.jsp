<%-- 
    Document   : replyforum
    Created on : Dec 22, 2020, 7:05:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="jdbc.*"%>
<%@page import="java.sql.*"%>
<%@page import='db.*'%>

<% 
    String title = request.getParameter("title");
    if(request.getParameter("submit")!=null)
    {
        
        String email = (String)session.getAttribute("login");
        out.println(email);
        String reply = request.getParameter("reply");     
        String forumtitle = (String)session.getAttribute("ftitle");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
        pst = con.prepareStatement("INSERT INTO forum_reply_3(email,forumtitle,reply) VALUES(?,?,?)");
        pst.setString(1, email);
        pst.setString(2, forumtitle);
        pst.setString(3, reply);
        pst.executeUpdate();
        
        %>
        
        <script>
            alert("Balas dimasukkan");
            window.location = 'viewreply3.jsp?title=<%=forumtitle%>';
       </script>
       
    <% 
    }

%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC FORUM BALAS</title>
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
  
  
<!-- Blue Color
#4A7DAD
#2f5492
#006697

#25274D
#29648A
#2E9CCA
-->

</head>
<body style="background-color: #c2feff;">
    
        <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
    
    <!--create forum button-->
       <div class="btn-group" style="top: 3px; left: 450px;padding-top: 7%;">
            <a href="viewreply3.jsp?title=<%=title%>"><button class="createforum circular"> Back </button></a>
            <br> <br>
       </div> 

    
    <!--forum title-->    
        <div id="box">
            <div class="head1">
                <h1 style="color: white; text-align: center; padding-top: 1px;">Forum 1: Topik 1.2 Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Atur Cara</h1>
                <br>
            </div>
                    
                    <%  
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
                        Statement st = con.createStatement();
                        session.setAttribute("ftitle",title);
                        String question = "";
                        String name="";
                        String date = "";
                        rs = st.executeQuery("select * from forum_3 where title='"+title+"'");
                        
                        while(rs.next())
                        {
                            date = rs.getString("date");
                            question = rs.getString("question"); 
                            String email = rs.getString("email");
                            String getdetails = "Select * from login where email = '" + rs.getString("email") +"'";
                            rs = st.executeQuery(getdetails);
                            while(rs.next()){
                                name = rs.getString("firstname") + " " + rs.getString("lastname");
                            }
                    %>   
            <hr>
            <h2 style="color: white; text-align: center;">Title: <%=title%></h2> 
            <br><br>
             <div class="media">
                <div class="media-left">
                  <img src="images/profile1.jfif" class="media-object" style="width:45px">
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><%=name%> <small><i> Posted on <%=date%></i></small></h4>
                    <p class="comment"> <%=question%></p>
             
            <% }  %>
            <form>
                    <label>
                        <input name="reply" id="reply" type="text" value size="90" placeholder="Write your comment here..." style="min-height: 20px; height: 160px; padding-bottom: 140px;" required/>
                    </label>
                    <br><br>             
                    <label>
                        <button class="button" type="reset">Reset</button>
                    </label>
                    <label>
                        <button class="button" id="submit" name="submit" type="submit">Submit</button>
                    </label>
            </form></div>
        </div>
    </div>
        <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  
       
</body>

</html>

