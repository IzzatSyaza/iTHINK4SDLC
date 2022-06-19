<%-- 
    Document   : AttemptQuiz2
    Created on : Dec 20, 2020, 9:43:14 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC KUIZ TOPIK 1.2</title>
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
		<h5>Pelaporan Penggunaan Teknik Komputasional
		<br>Bagi Setiap Fasa Pembangunan Atur Cara</h5>	
	</div>
	
	<br>
	<br>
	<div id="box">
        <h5 style="text-align:left; color: #f2f2f2; margin-left: 10px; margin-top: 10px">NO 1</h5> 
	<form method="post" action="QuizServlet2">
		<div class="Question" >
		<p><b>Raimi ditugaskan untuk mencari persamaan dan perbezaan antara sebuah basikal dengan sebuah motosikal. Raimi telah menggunakan teknik ...</b></p>
		<hr>
		<div class="Answer">
			<input type="radio" id="A" name="q1" value="a" required>
			<label>pengecaman corak</label><br>
			<input type="radio" id="B" name="q1" value="b">
			<label>leraian</label><br>
			<input type="radio" id="C" name="q1" value="c">
			<label>peniskalaan</label><br>
			<input type="radio" id="D" name="q1" value="d">
			<label>pengitlakan</label><br>
			
		<hr>	
		</div>
		</div>
     
            
                <h5 style="text-align:left; color: #f2f2f2; margin-left: 10px; margin-top: 10px">NO 2</h5> 
                <div class="Question" >
                    <p><b>Apakah kelebihan penggunaan teknik-teknik pemikiran komputasional dalam pembangunan atur cara?</p>
                    <p style="text-align:left;padding-left:200px;"><br>I  Menyelesaikan masalah secara sistematik
                    <br>II Menghasilkan atur cara dengan cekap
                    <br>III Menghasilkan atur cara yang menepati kehendak pengguna</b></p>
		<hr>
		<div class="Answer">
			<input type="radio" id="A" name="q2" value="a" required>
			<label >I sahaja </label><br>
			<input type="radio" id="B" name="q2" value="b">
			<label >I, II dan III</label><br>
			<input type="radio" id="C" name="q2" value="c">
			<label>II dan III</label><br>
			<input type="radio" id="D" name="q2" value="d">
			<label>I dan II</label><br>
			
		<hr>	
		</div>
		</div>
            
                <h5 style="text-align:left; color: #f2f2f2; margin-left: 10px; margin-top: 10px">NO 3</h5> 
                <div class="Question" >
		<p><b>Teknik digunakan apabila masalah yang besar perlu dipecahkan kepada bahagian-bahagian masalah yang lebih kecil.</b></p>
		<hr>
		<div class="Answer">
			<input type="radio" id="A" name="q3" value="a" required>
			<label>Pengecaman corak</label><br>
			<input type="radio" id="B" name="q3" value="b">
			<label>Peniskalaan</label><br>
			<input type="radio" id="C" name="q3" value="c">
			<label>Leraian</label><br>
			<input type="radio" id="D" name="q3" value="d">
			<label>Pengitlakan</label><br>
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

