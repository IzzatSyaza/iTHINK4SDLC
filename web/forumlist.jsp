<%-- 
    Document   : forumlist
    Created on : Dec 22, 2020, 6:47:41 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC FORUM</title>
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
    table
{
   border-collapse:collapse;
   width:92%;
   margin: auto;
   border: 2px solid black;
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
.btn-group{
    font-size: 18px;
}
#bordertitle{
    border-top: 2px solid black;
    border-left: 2px solid black;
    border-right: 2px solid black;

}
#bordertitle-button{

    border-left: 2px solid black;
    border-right: 2px solid black;
    border-bottom: 2px solid black;

}
#tajukborder{
    border: 2px solid black;

}
#reply{
    border-right: 2px solid black;
    border-bottom: 2px solid black;
}
</style>


</head>
<body style="background-color: #c2feff;">
        <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
    
    <%
    //Start Operation\
    Connection con;
    ResultSet rs;
    Statement st;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
    st = con.createStatement();
    
    //Get How many DATA in FORUM 1
    String sql = "SELECT COUNT(*) FROM forum_1";
    rs = st.executeQuery(sql);
    String countrow1 = "";
    String countrow2 = "";
    String countrow3 = "";
    while(rs.next()){
        countrow1 = rs.getString(1);
    }
    
    //Get How many DATA in FORUM 2
    sql = "SELECT COUNT(*) FROM forum_2";
    rs = st.executeQuery(sql);
    while(rs.next()){
        countrow2 = rs.getString(1);
    }
    
    //Get How many DATA in FORUM 3
    sql = "SELECT COUNT(*) FROM forum_3";
    rs = st.executeQuery(sql);
    while(rs.next()){
        countrow3 = rs.getString(1);
    }
       
%>

    <div class="mytext" >
        <h2 style="font-size: 30px ;padding-top: 10%; text-align: center; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
            Anda boleh menyertai forum dibawah!</h2>
    </div>
<table>
    <tr>
        <td>        
            <a href="viewforum1.jsp" > 
            <h3 id="reg"><u>  Forum 1 </u></h3>
            </a>
            <button type="button" class="btn btn-primary" style="text-align:center;"> <%=countrow1%> posts</button>
            <hr>
            <img src="images/topic1.PNG" width="265" height="250" class="center">
            <br>
        </td>
        
        <td>
            <a href="viewforum2.jsp" > 
            <h3 id="reg"><u>  Forum 2 </u></h3>
            </a>
            <button type="button" class="btn btn-primary" style="text-align:center;"> <%=countrow2%> posts</button>
            <hr>
            <img src="images/topic2.PNG" width="265" height="250" class="center">
            <br>
        </td>
        
        <td>
            <a href="viewforum3.jsp" > 
            <h3 id="reg"><u>  Forum 3 </u></h3>
            </a>
            <button type="button" class="btn btn-primary" style="text-align:center;"> <%=countrow3%> posts</button>
            <hr>
            <img src="images/topic3.PNG" width="265" height="250" class="center">
            <br>
        </td>
    </tr>
</table>
    <br>
    <br><br><br>
     <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>
       
</body>

</html>
