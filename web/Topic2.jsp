<%-- 
    Document   : Topic2
    Created on : Dec 15, 2020, 6:46:56 PM
    Author     : pichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC TOPIK 1.2</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
      #myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}
.box li{
    margin-left: 50px;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
.box {
  box-shadow:
  0 2.8px 2.2px rgba(0, 0, 0, 0.034),
  0 6.7px 5.3px rgba(0, 0, 0, 0.048),
  0 12.5px 10px rgba(0, 0, 0, 0.06),
  0 22.3px 17.9px rgba(0, 0, 0, 0.072),
  0 41.8px 33.4px rgba(0, 0, 0, 0.086),
  0 100px 80px rgba(0, 0, 0, 0.12)
;

  
  
  min-height: 600px;
  width: 40vw;
  margin: 100px auto;
  background: white;
  border-radius: 5px;
}
.box p{
    margin-left: 50px;
    margin-right: 50px;
    text-align: justify;
    text-justify: inter-word;
    font-family: "Times New Roman", Times, serif;
    font-size: 25px;
}
</style>
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
    
<h1 style="font-family: 'DoppioOne';text-align: center;padding-top: 170px;font-size: 50px;">Topik 1.2 </h1>
<h1 style="font-family: 'DoppioOne';text-align: center;">Pelaporan Penggunaan Teknik Pemikiran Komputasional bagi Setiap Fasa Pembangunan Atur Cara</h1>
    <div class="container" style="margin-left: 250px;">
        
<!--        #video imbas kembali#

<iframe height="450" width="800" style="margin-left: 140px"
      src="https://www.youtube.com/embed/a8YHHYeXUHM">
   </iframe>-->
<table width='1280'>
    <tbody>
        <tr>
            <td width="200" valign="top">
                <p>
                    <img
                        class="myImages" id="myImg"
                        width="500"
                        height="600"
                        src="images/notat2/2.1.png"
                        alt="Page 1"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                </p>
            </td>
            <td width="280" valign="top">
                <div class='box'>
                <p>
                    <strong>
                        Contoh format pelaporan dengan menggunakan teknik
                        pemikiran komputasional bagi setiap fasa dalam atur
                        cara
                    </strong>
                    <br/>
                    <br/>
                    
                    Berikut adalah teknik leraian bagi setiap fasa
                </p>
                </div>
            </td>
        </tr>
        <tr>
            <td width="200" valign="top">
                <p>
                    <img
                        class="myImages" id="myImg"
                        width="500"
                        height="600"
                        src="images/notat2/2.2.png"
                        alt="Page 1"
                        style="margin-top:100px;margin-right: 100px"
                    />
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>
                        Penyediaan laporan bertujuan menyediakan maklumat yang
                        tepat tentang pengunaan teknik pemikiran komputasional
                        dalam menyelesaikan masalah.
                    </strong>
                </p>
                <p>
                    <br/>
                    Berikut adalah teknik pengecaman corak bagi setiap fasa
                </p>
                </div>
            </td>
        </tr>
        <tr>
            <td width="200" valign="top">
                <p>
                    <img
                        class="myImages" id="myImg"
                        width="500"
                        height="600"
                        src="images/notat2/2.3.png"
                        alt="Page 1"
                        style="margin-top:100px;margin-right: 100px"
                    />
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                    <p>
                        <strong>
                            Dengan membuat pelaporan, 
                            cara-cara untuk menguruskan maklumat secara 
                            sistematik dapat dipelajari
                        </strong>
                    </p>
                <p>
                    <br>
                    Berikut adalah teknik peniskalaan bagi setiap fasa.
                </p></div>
               
            </td>
            
        </tr>
        <tr>
             <td width="1280" colspan="2" valign="top">
                <div class="box" style="width: 1400px;font-size: 30px;padding-top: 10px;padding-bottom: 10px">
                <p>
                    <strong> Imbas Kembali</strong>
                </p>
                <p>
                    <!-- https://www.youtube.com/embed/a8YHHYeXUHM-->        
                    <iframe height="450" width="800" style="margin-left: 140px"
                    src="https://www.youtube.com/embed/BciprqVPKgw">
                    </iframe>
                </p>
                <p style="padding-left: 138px;font-size: 20px">
                <strong>Sumber :</strong>  Lepak Bersama Cikgu @ Cikgu Noraini
                </p>
                <p>
                    <iframe height="450" width="800" style="margin-left: 140px"
                    src="https://www.youtube.com/embed/Yo6vceP21n4">
                    </iframe>
                </p>
                <p style="padding-left: 138px;font-size: 20px">
                    <strong>Sumber :</strong>  Tutor Ryewan
                </p>
                                <p>
                    <iframe height="450" width="800" style="margin-left: 140px"
                    src="https://www.youtube.com/embed/a8YHHYeXUHM">
                    </iframe>
                </p>
                <p style="padding-left: 138px;font-size: 20px">
                    <strong>Sumber :</strong>  Sim Wei Na
                </p>
                <p>
                    <strong>Sumber Nota Padat:</strong> 
                </p>
                <p>
                    <a href="https://www.bumigemilang.com/nota-padat-dan-latihan-asas-sains-komputer-ask-tingkatan-3-tiga/" target="_blank">https://www.bumigemilang.com/nota-padat-dan-latihan-asas-sains-komputer-ask-tingkatan-3-tiga/</a>
                </p>
                </div>
            </td>
        </tr>
    </tbody>
</table>
        
        
        <!--Javascript Section-->
        <script>
            // create references to the modal...
            var modal = document.getElementById('myModal');
            // to all images -- note I'm using a class!
            var images = document.getElementsByClassName('myImages');
            // the image in the modal
            var modalImg = document.getElementById("img01");
            // and the caption in the modal
            var captionText = document.getElementById("caption");

            // Go through all of the images with our custom class
            for (var i = 0; i < images.length; i++) {
              var img = images[i];
              // and attach our click listener for this image.
              img.onclick = function(evt) {
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
              }
            }

            var span = document.getElementsByClassName("close")[0];

            span.onclick = function() {
              modal.style.display = "none";
            }
    </script>




    </div>
            <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  
</body>
</html>


