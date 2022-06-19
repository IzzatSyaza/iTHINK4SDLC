<%-- 
    Document   : mainQuiz.jsp
    Created on : Dec 13, 2020, 10:24:53 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC KUIZ</title>
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
    h1{
        padding-top:10%;
        text-align: center;
    }
</style>

</head>
<body style="background-color: #c2feff;">    <div style="position:fixed;width: 100%;">
  
     <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
 <%if((String)session.getAttribute("login") != null){%>
    </div>
      <h1>KUIZ</h1>  
    <div style="text-align: center;height: 0px;">
        
            <div class="item" style="margin-top:100px;">
                <a href="./AttemptQuiz.jsp"><img src="images/topic1.PNG" width="350" height="400"> </a>
            </div>  
            <div class="item" style="margin-top:100px;">
                <a href="./AttemptQuiz2.jsp"><img src="images/topic2.PNG" width="350" height="400"> </a>
            </div>
    </div>
 
      <%}else{%>
            <script>
                alert('Anda perlu log masuk untuk menjawab kuiz');
                window.location = './index.jsp';
            </script>
<%}%>


        <footer id="footer">
            <%@ include file="parts/footer.jsp"%>
         </footer>  
</body>
</html>




