<%-- 
    Document   : createforum
    Created on : Dec 22, 2020, 6:51:09 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC MEMBUAT FORUM TOPIK 1.1</title>
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
  
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
--><style>
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
    }</style>
</head>
   
    <body style="background-color: #c2feff;">
             <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
        <div style="padding-top: 10%" ></div>
        
        <table >
            <tr>
                <td>
                    <h1 style="color: white; text-align: center; padding-top: 1px;">Forum 1: Topik 1.1 Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Atur Cara</h1>
                    <br>
                </td>
            </tr>
            <tr>
                <td id="reply" style="text-align:left;">
                    <div class="btn-group" >
                    <a href="viewforum1.jsp"><button class="createforum circular"> << Back</button></a>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="padding-top: 10px;text-align: left;">
                    <form method="post" action="UserInsertForum1Servlet">
                
                        <label style="color: white; font-size: 30px;">&nbsp;Tajuk Forum  &nbsp;&nbsp;:&nbsp;
                            <input name="title" type="text" value size="50" style="min-width: auto;" required/>
                        </label>
                        <br/>
                        <br/> 
                        <label style="color: white; font-size: 30px">&nbsp;Soalan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
                        <input name="message" type="text" value size="50" style="min-height: 230px; height: 230px; padding-bottom: 200px;" required/>
                        </label>
                        <br/>
                        <br/>
                        <label>
                            <div>
                                <button class="button">Create</button>
                            </div>
                        </label>            
                    </form>
                </td>
                    
            </tr>
            
        </table>

            

            
            
            
                          
    <footer id="site-footer">
        <%@ include file="parts/footer.jsp"%>
    </footer>  
    </body>
  
</html>
