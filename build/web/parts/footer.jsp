<%-- 
    Document   : footer
    Created on : Jan 1, 2021, 7:17:23 PM
    Author     : pichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 
        <style>
            .footer{
  background: #116466;
  color:white;
  font-family: DoppioOne;
  .links{
    ul {list-style-type: none;}
    li a{
      color: white;
      transition: color .2s;
      &:hover{
        text-decoration:none;
        color:#4180CB;
        }
    }
  }  
  .about-company{
    i{font-size: 25px;}
    a{
      color:white;
      transition: color .2s;
      &:hover{color:#4180CB}
    }
  } 
  .location{
    i{font-size: 18px;}
  }
  .copyright p{border-top:1px solid rgba(255,255,255,.1);} 

}
        </style>
    </head>
    <body>

        <div class="mt-5 pt-5 pb-5 footer" >
<div class="container">
  <div class="row">
    <div class="col-lg-5 col-xs-12 about-company">
      <h2>Tentang Kami</h2>
      <p class="pr-5 text-white-50">Kami dari HAENA Company telah membuat laman web khas untuk pelajar tingkatan 3 yang ingin mempelajari tentang Bab 1 iaitu Konsep Asas Pemikiran Komputasional</p>
    </div>
    <div class="col-lg-3 col-xs-12 links">
      <h4 class="mt-lg-0 mt-sm-3">Tambahan</h4>
        <ul class="m-0 p-0" style="list-style-type: none;">
          <li>- <a href="./FAQ.jsp">FAQ</a></li>
          <li>- <a href="./feedback.jsp">Maklum Balas</a></li>
        </ul>
    </div>
    <div class="col-lg-4 col-xs-12 location">
      <h4 class="mt-lg-0 mt-sm-4">Kontak Kami</h4>
      <p class="mb-0"><i class="fa fa-phone mr-3"></i>+6014 123-4567</p>
      <p><i class="fa fa-envelope-o mr-3"></i>haenacompany@gmail.com</p>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col copyright">
      <p class=""><small class="text-white-50">© 2021. All Rights Reserved.</small></p>
    </div>
  </div>
</div>
</div>

    </body>
</html>
