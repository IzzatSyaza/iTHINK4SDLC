<%-- 
    Document   : AttemptQuiz
    Created on : Dec 20, 2020, 9:41:55 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC KUIZ TOPIK 1.1</title>
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
  
<!-- Blue Color
#4A7DAD
#2f5492
#006697

#25274D
#29648A
#2E9CCA
-->

</head>
<style>

#box
{
	text-align:center;
	border: 1px solid black;
	background-color: #116466;
	width:1000px;
	margin: auto;
}

.HeaderQuiz 
{
	text-align:center;
	font-family:verdana;
	color: #3f5152;
        padding-top : 5%;
}

.Question
{
	color: #f2f2f2;
	font-size: 20px;
	padding : 10px;
}

.Answer
{
	color: #f2f2f2;
	font-size: 20px;
	text-align: left;
	padding : 20px;
}

</style>
<body style="background-color: #c2feff;">
    <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
	
	<br>
	<br>
	<br>
	<div class="HeaderQuiz">
                <br><h1>KUIZ</h1> <br>
		<h5>Menggunakan konsep pemikiran
		<br>komputasional dalam pembangunan atur cara</h5>	
	</div>
		
	<br>
	<br>
	<div id="box">
        <h5 style="text-align:left; color: #f2f2f2; margin-left: 10px; margin-top: 10px">NO 1</h5> 
	<form method="post" action="QuizServlet">
		<div class="Question" >
		<p><b>Pembangunan atur cara mengandungi lima fasa yang utama. Pilih fasa yang diminta untuk menyediakan algoritma seperti carta alir dan pseudokod.</b></p>
		<hr>
		<div class="Answer">
                        <input type="radio" id="A" name="q1" value="a" required>
			<label>Fasa Reka Bentuk Atur Cara</label><br>
			<input type="radio" id="B" name="q1" value="b">
			<label>Fasa Pengekodan</label><br>
			<input type="radio" id="C" name="q1" value="c">
			<label>Fasa Analisis Masalah</label><br>
			<input type="radio" id="D" name="q1" value="d">
			<label>Fasa Pengujian</label><br>
			
		<hr>	
		</div>
		</div>
                
            
                <h5 style="text-align:left; color: #f2f2f2; margin-left: 10px; margin-top: 10px">NO 2</h5> 
                <div class="Question" >
		<p><b>Fasa pembangunan atur cara terdiri daripada?</b></p>
		<hr>
		<div class="Answer">
			<input type="radio" id="A" name="q2" value="a" required>
			<label>analisis masalah, reka bentuk atur cara, pengujian dan penyahpepijatan, pengekodan, dokumentasi</label><br>
			<input type="radio" id="B" name="q2" value="b">
			<label>analisis masalah, reka bentuk atur cara, pengekodan, pengujian dan penyahpepijatan, dokumentasi</label><br>
			<input type="radio" id="C" name="q2" value="c">
			<label>analisis masalah, reka bentuk atur cara, pengujian dan penyahpepijatan, dokumentasi, pengekodan</label><br>
			<input type="radio" id="D" name="q2" value="d">
			<label>analisis masalah, reka bentuk atur cara, pengekodan, dokumentasi, pengujian dan penyahpepijatan</label><br>
			
		<hr>	
		</div>
		</div>
                
                
                <h5 style="text-align:left; color: #f2f2f2; margin-left: 10px; margin-top: 10px">NO 3</h5> 
                <div class="Question" >
		<p><b>Dalam fasa analisis masalah, pengatur cara akan mengenal pasti input, proses dan ...</b></p>
		<hr>
		<div class="Answer">
			<input type="radio" id="A" name="q3" value="a" required>
			<label>perisian</label><br>
			<input type="radio" id="B" name="q3" value="b">
			<label>storan </label><br>
			<input type="radio" id="C" name="q3" value="c">
			<label>output</label><br>
			<input type="radio" id="D" name="q3" value="d">
			<label>perkakasan</label><br>
			<br>
                        <input class="btn btn-success" type="submit" value="NEXT" name="orderBtn" style="background-color: #6c5b7b;" />
                        	
		</div>
		</div>
               
           </div>
	
	
	</form>
        
        <br>
           <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>         

</body>
</html>
