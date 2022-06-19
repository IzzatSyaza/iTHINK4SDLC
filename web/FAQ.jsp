<%-- 
    Document   : FAQ
    Created on : Dec 30, 2020, 12:36:27 AM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC FAQ</title>
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
.container{
    font-family: 'DoppioOne';
}  
.accordion {
    border: 2px;
  background-color: #116466;
  color: #f2f2f2;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}

</style>
</head>


<body style="background-color: #c2feff;">
    <!-- Just an image -->
        <div style="position:fixed;width: 100%;">
        <%@ include file='parts/header.jsp'%>
        </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="container pt-3">
    <div> 
        <br>
        <br>
        <br>
        <h2>Soalan Lazim(FAQ)</h2>
        
        <button class="accordion">Bagaimana jika saya tidak log masuk?</button>
        <div class="panel">
        <p>Anda hanya boleh mengakses bahan nota dan hanya melihat forum</p>
        </div>
        
        <button class="accordion">Mengapa saya tidak boleh log masuk?</button>
        <div class="panel">
        <p>Anda perlu mendaftar terlebih dahulu sebelum anda log masuk ke sistem. Butang mendaftar berada di sudut kanan atas pada bar navigasi.</p>
        </div>
        
        <button class="accordion">Bagaimana untuk log keluar?</button>
        <div class="panel">
        <p>Pergi ke bar navigasi keluar di sudut kanan atas</p>
        </div>
        
        <button class="accordion">Bagaimana cara untuk mengakses bahan nota?</button>
        <div class="panel">
        <p>Pergi ke halaman nota dan pilih subtopik yang ingin anda pelajari</p>
        </div>
        
        <button class="accordion">Bagaimana untuk saya mendapatkan rujukan?</button>
        <div class="panel">
        <p>Rujukan bahan diberikan dalam setiap subtopik.</p>
        </div>
        
        <button class="accordion">Bagaimana untuk mencuba Kuiz?</button>
        <div class="panel">
        <p>Pergi ke halaman kuiz dengan klik pada bar navigasi kuiz. Anda boleh memilih subtopik mana yang ingin anda cuba.</p>
        </div>
         
        <button class="accordion">Apakah kelebihan mencuba kuiz?</button>
        <div class="panel">
        <p>Anda boleh menguji pengetahuan anda mengenai subtopik</p>
        </div>
        
        <button class="accordion">Bolehkah saya melihat keputusan kuiz saya?</button>
        <div class="panel">
        <p>Ya, pergi ke halaman prestasi untuk melihat skor kuiz anda</p>
        </div>
        
        <button class="accordion">Bagaimana untuk mencuba semula Kuiz?</button>
        <div class="panel">
        <p>Pergi ke halaman prestasi dan klik pada pautan percubaan dalam jadual yang diberikan. Anda boleh memilih subtopik mana yang ingin anda cuba.</p>
        </div>
        
        <button class="accordion">Apabila saya menghadapi masalah memahami nota, bagaimana saya boleh bertanya?</button>
        <div class="panel">
        <p>Anda boleh mengemukakan soalan di halaman forum. Di sana anda boleh berinteraksi dengan pelajar lain.</p>
        </div>
        
        <button class="accordion">Bagaimana cara membalas di forum?</button>
        <div class="panel">
        <p>Pergi ke halaman balasan dan pilih forum mana yang ingin anda balas. Butang balas diberikan.</p>
        </div>

        <button class="accordion">Bagaimana saya boleh 'mengedit' forum saya?</button>
        <div class="panel">
        <p>Pergi ke halaman forum anda, pilih forum yang anda perlukan dan klik pada butang edit</p>
        </div>
        
        <button class="accordion">Bagaimana saya boleh memadam forum saya?</button>
        <div class="panel">
        <p>Pergi ke halaman forum anda, pilih forum yang anda perlukan dan klik pada butang delete</p>
        </div>
        
        <br>
        <br>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>
    </div>
 </div>
                <footer id="site-footer" style="font-family: 'DoppioOne';">
    <%@ include file="parts/footer.jsp"%>

 </footer> 
</body>
</html>
