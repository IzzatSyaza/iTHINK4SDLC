<%-- 
    Document   : index
    Created on : Nov 24, 2020, 10:54:29 PM
    Author     : pichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC</title>
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

</head>
<body style="background-color: #c2feff;">    <div style="position:fixed;width: 100%;">
  
    <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
 
    </div>
    <div style="text-align: center;height: 0px;">
                <div class="item">
                    <a href="./Topic1.jsp"><img src="images/topic1.PNG" width="350" height="400"> </a>
            </div>  
        <div class="item" >
            <a href="./Topic2.jsp"><img src="images/topic2.PNG" width="350" height="400"> </a>
                
            </div>
    
            <div class="item">
                <a href="./Topic3.jsp"><img src="images/topic3.PNG" width="350" height="400" > </a> 
            </div> 
    </div>
 
        <footer id="footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  

</body>

</html>

