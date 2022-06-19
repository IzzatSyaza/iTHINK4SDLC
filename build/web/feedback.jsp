<%-- 
    Document   : feedback
    Created on : Dec 30, 2020, 10:12:29 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
#contain{
    background-color: #eee;
    padding: 20px 15px;
    border: 3px solid #666;
    border-radius: 20px;
    margin: auto;
    width: 40%;
} 
#h2,#p{
    text-align: center;
}

</style>

<html>
    <head>
        <title>iTHINK4SDLC MAKLUM BALAS</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 
        </head>
        
<body style="background-color: #c2feff;">
    <div id="tophead">
        <%@ include file='parts/header.jsp'%>
    </div>
    <div id="padding"></div>
 <div id="contain" class="container-fluid">    
   
        <h2 id="h2">Maklum Balas</h2>
        <p id="p">
            Sila isikan maklum balas anda di bawah:
        </p>
        <form action="FeedbackServlet" role="form" method="post" id="reused_form">
            <div class="row" style="text-align:center;">
                <div class="col-sm-12 form-group">
                <label>Bagaimana anda menilai pengalaman anda menggunakan aplikasi ini?</label>
                <p>
                    <label class="radio-inline">
                    <input type="radio" name="experience" id="radio_experience" value="bad" >
                    Teruk
                    </label>

                    <label class="radio-inline">
                    <input type="radio" name="experience" id="radio_experience" value="average" >
                    Sederhana
                    </label>

                    <label class="radio-inline">
                    <input type="radio" name="experience" id="radio_experience" value="good" >
                    Baik
                    </label>
                </p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 form-group">
                    <label for="comments">
                        Komen untuk penambahbaikan:</label>
                    <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="name">
                        Nama:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="email">
                        E-mel:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
            </div>

                        <div class="row">
                <div class="col-sm-12 form-group">
                    <button type="submit" class="btn btn-lg btn-warning btn-block" >Hantar </button>
                </div>
            </div>

        </form>
    </div>
    
         <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  
    </body>
</html>


