<%-- 
    Document   : DoneQuiz
    Created on : Dec 1, 2020, 10:03:39 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC TAMAT QUIZ</title>
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

#box
{
	text-align:center;
	border: 1px solid black;
	background-color: #116466;
	width:1000px;
	margin: auto;
        color: #f2f2f2;
	font-size: 20px;
	padding : 10px;
 
}

#pad
{
    padding-top: 10%;
}
</style>
</head>
<body style="background-color: #c2feff;">       
    <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
    <br><br>
    <div id="pad">
    <div id ="box">
        <div style="padding: 100px;">  
            <h5> Quiz done!</h5>
            <h5> Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Aturcara</h5>
            <h5> Mark: ${mark} </h5>
    </div>
    
    <form action="mainQuiz.jsp">  
        <input class="btn btn-success" type="submit" value="DONE" name="orderBtn" style="background-color: #6c5b7b;" />
    </form>
    </div>
    </div>
            <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  
</body>
</html>

