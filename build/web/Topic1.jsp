<%-- 
    Document   : Topic1
    Created on : Dec 13, 2020, 7:05:29 PM
    Author     : pichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC TOPIK 1.1</title>
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

<h1 style="font-family: 'DoppioOne';text-align: center;padding-top: 170px;font-size: 50px;">Topik 1.1 </h1>
<h1 style="font-family: 'DoppioOne';text-align: center;">Menggunakan Konsep Pemikiran Komputasional Dalam Pembangunan Atur Cara</h1>
    <div class="container" style="margin-left: 250px;">
        
<table   width="1280">
    <tbody>
        <tr>
            
            <td width="200" valign="top">
                <p>
                    
                    <img
                        class="myImages" id="myImg"
                        width="500"
                        height="600"
                        src="images/notat1/1.1-page-002.jpg"
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
            
            
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Pembangunan atur cara</strong>
                </p>
                <p>
                    Antara Teknik Pemikiran komputasional adalah;
                </p>
                <p style="text-indent: 50px;">
                    i. Teknik Leraian
                </p>
                <p style="text-indent: 50px;">
                    ii. Teknik Pengecaman corak
                </p>
                <p style="text-indent: 50px;">
                    iii. Teknik Peniskalaan
                </p>
                <p style="text-indent: 50px;">
                    iv. Teknik Pengitlakan
                </p>
                <p>
                    <strong>Lima fasa pembangunan atur cara</strong>
                </p>
                <p>
                    Antara lima fasa pembangunan atur cara adalah;
                </p>
                <p style="text-indent: 50px;">
                    i. Fasa analisis masalah
                </p>
                <p style="text-indent: 50px;">
                    ii. Fasa Reka Bentuk Aturcara
                </p>
                <p style="text-indent: 50px;">
                    iii. Fasa Pengekodan
                </p>
                <p style="text-indent: 50px;">
                    iv. Fasa Pengujian dan Penyahpijatan
                </p>
                <p style="text-indent: 50px;">
                    v. Fasa Dokumentasi
                </p>
                <p>
                    <strong>Fasa Analisis Masalah</strong>
                </p>
                <p>
                    <strong></strong>
                </p>
                <p style="text-indent: 50px;">
                    i. Kenalpasti masalah, pengguna sasaran, keperluan perisian
                    dan sistem.
                </p>
                <p style="text-indent: 50px;">
                    ii. Kenalpasti input-proses-output
                </p>
                <p style="text-indent: 50px;">
                    iii. Menjalakan kajian untuk mendapatkan maklumat
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
                        src="images/notat1/1.1-page-003.jpg"
                        alt="Page 2"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Reka Bentuk Atur Cara</strong>
                </p>
                <p>
                    <strong></strong>
                </p>
                <p style="text-indent: 50px;">
                    i. Menulis Pseudokod
                </p>
                <p style="text-indent: 50px;">
                    ii. Melukis carta alir
                </p>
                <p style="text-indent: 50px;">
                    iii. Reka bentuk antara muka pengguna
                </p>
                <p style="text-indent: 50px;">
                    iv. Menggunakan teknik pengecaman corak bagi setiap masalah
                    kecil yang telah dianalisa dalam fasa analisis masalah
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
                        src="images/notat1/1.1-page-004.jpg"
                        alt="Page 3"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Reka Bentuk Atur Cara</strong>
                </p>
                <p>
                    
                </p>
                <p style="text-indent: 50px;">
                    i. Menggunakan teknik peniskalaan bagi mempercepatkan
                    proses menyelesaikan masalah.
                </p>
                <p style="text-indent: 50px;">
                    ii. Menggunakan teknik pengitlakan dengan menghasilkan
                    algoritma peyelesaian masalah seperti pseudokod atau carta
                    alir untuk proses pembangunan atur cara.
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
                        src="images/notat1/1.1-page-005.jpg"
                        alt="Page 4"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Pengkodan</strong>
                </p>
                <p style="text-indent: 50px;">
                    i. Memilih Bahasa pengaturcaraan<strong></strong>
                </p>
                <p style="text-indent: 50px;">
ii. Membina aturcara berdasarkan carta alir atau pseudokod                    <strong></strong>
                </p>
                <p style="text-indent: 50px;">
                    iii. Penggunaan teknik leraian untuk menulis aturcara
                    dengan membahagikan kod aturcara kepada bahagian-bahagian
yang lebih kecil atau dikenali sebagai subaturcara.                    <strong></strong>
                </p>
                <p style="text-indent: 50px;">
                    iv. Teknik Pengecaman Corak digunakan bagi mengenalpasti
ciri-ciri persamaan atau perbezaan dalam membina atur cara.                    <strong></strong>
                </p>
                <p style="text-indent: 50px;">
                    v. Teknik Peniskalaan dilaksanakan semasa fasa pengekodan
                    iaitu dengan mengenalpasti aspek penting bagi setiap kod
                    aturcara.<strong></strong>
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
                        src="images/notat1/1.1-page-006.jpg"
                        alt="Page 5"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Pengujian dan Penyahpijatan</strong>
                </p>
                <p>
                    <strong></strong>
                </p>
                <p>
                    Terdapat 3 jenis ralat iaitu;
                </p>
                <p style="text-indent: 50px;">
                    i. Ralat sinteks – disebabkan pengunaan simbol atau tatanda
                    Bahasa pengaturcaraan yang salah.
                </p>
                <p style="text-indent: 50px;">
                    ii. Ralat masa larian – disebabkan kemasukkan data yang
                    tidak menepati kehendak kod arahan.
                </p>
                <p style="text-indent: 50px;">
                    iii. Ralat logik – disebabkan kesilapan logik pengatur cara
                    sehingga boleh menyebabkan output yang dihasilkan tidak
                    seperti yang dijangka.
                </p>
                </div>
            </td>
        </tr>
         <td width="200" valign="top">
                <p>
                    
                    <img
                        class="myImages" id="myImg"
                        width="500"
                        height="600"
                        src="images/notat1/1.1-page-007.jpg"
                        alt="Page 6"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Pengujian dan Penyahpijatan</strong>
                </p>
                <p style="text-indent: 50px;">
                    i. Teknik peniskalaan digunakan untuk aspek penting
                    terhadap mesej ralat yang dipaparkan.
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
                        src="images/notat1/1.1-page-008.jpg"
                        alt="Page 7"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Dokumentasi</strong>
                </p>
                <p>
                    Dua jenis dokumen iaitu;<strong></strong>
                </p>
                <p style="text-indent: 50px;">
                    i. Dokumentasi dalaman
                </p>
                <p style="text-indent: 50px;">
                    ii. Dokumentasi luaran
                </p>
                <p>
                    Tujuan dokumentasi dalaman;
                </p>
                <p style="text-indent: 50px;">
                    i. Membantu pengturcara baru memahami sistem yang telah
                    dibangunkan.
                </p>
                <p style="text-indent: 50px;">
                    ii. Memudahkan proses penyelenggaraan dan penambaahbaikkan
                    sistem applikasi yang telah dibangunkan
                </p>
                <p>
                    Tujuan dokumentasi luaran untuk membantu pengguna akhir.
                </p>
                <p>
                    Dua dokumentasi luaran;
                </p>
                <p style="text-indent: 50px;">
                    i. Dokumen Pustaka
                </p>
                <p style="text-indent: 50px;">
                    ii. Panduan pengguna
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
                        src="images/notat1/1.1-page-009.jpg"
                        alt="Page 8"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Dokumentasi</strong>
                </p>
                <p style="text-indent: 50px;">
                    i. Teknik leraian digunakan untuk menyediakan dokumentasi
                </p>
                <p style="text-indent: 50px;">
                    ii. Teknik pengecaman corak digunakan untuk menyediakan
                    dokumentasi luaran dan dalaman
                </p>
                <p style="text-indent: 50px;">
                    iii. Teknik peniskalaan sesuai digunakan untuk proses
                    penyediaan dokumen.
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
                        src="images/notat1/1.1-page-010.jpg"
                        alt="Page 9"
                        style="margin-top:100px;margin-right: 100px"
                    />
                    <div id="myModal" class="modal">
                      <span class="close">&times;</span>
                      <img class="modal-content" id="img01">
                      <div id="caption"></div>
                    </div>
                    
                </p>
            </td>
            <td width="500" valign="top">
                <div class="box">
                <p>
                    <strong>Fasa Dokumentasi</strong>
                </p>
                <p>
                    Item-item yang diperlukan dalam penyediaan format dokumen
                    pustaka;
                </p>
                <p style="text-indent: 50px;">
                    i. Pengenalan sistem
                </p>
                <p style="text-indent: 50px;">
                    ii. Keperluan sistem pengoperasian
                </p>
                <p style="text-indent: 50px;">
                    iii. Keperluan sistem aplikasi
                </p>
                <p style="text-indent: 50px;">
                    iv. Keperluan ruang ingatan
                </p>
                <p style="text-indent: 50px;">
                    v. Pseudokod atau carta alir
                </p>
                <p style="text-indent: 50px;">
                    vi. Kod aturcara
                </p>
                <p>
                    Item-item yang diperlukan dalam penyediaan format dokumen
                    pengguna;
                </p>
                <p style="text-indent: 50px;">
                    i. Langkah-langkah untuk memuat turun perisian
                </p>
                <p style="text-indent: 50px;">
                    ii. Langkah-langkah untuk memasang perisian.
                </p>
                </div>
                
            </td>
        </tr>
        <tr>
            <td width="1280" colspan="2" valign="top">
                <div class="box" style="width: 1400px;font-size: 30px;padding-top: 10px;padding-bottom: 10px">
                <p>
                    <strong> Nota Ringkas Video Youtube</strong>
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
<footer id="site-footer" style="font-family: 'DoppioOne';">
    <%@ include file="parts/footer.jsp"%>

</footer>  
</body>
</html>

