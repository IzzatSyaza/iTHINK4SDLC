<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("welcome.jsp");
}
%>


<%
try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root",""); //create connection
	
	if(request.getParameter("btn_register")!=null) //check register button click event not null
	{
		String firstname,lastname,email,password;
		
		firstname=request.getParameter("txt_firstname"); //txt_firstname
		lastname=request.getParameter("txt_lastname"); //txt_lastname
		email=request.getParameter("txt_email"); //txt_email
		password=request.getParameter("txt_password"); //txt_password
		
		PreparedStatement pstmt=null; //create statement
		PreparedStatement emailcheck=null; //create statement    
                PreparedStatement id=null;
		//Check email is taken or not
                emailcheck = con.prepareStatement("select count(*) from login where email=?");
                
                emailcheck.setString(1,email);
                ResultSet rs = emailcheck.executeQuery();
                int count = 0;
                String duplicate = null;
                while(rs.next()){
                    count = rs.getInt("count(*)");
                }
                if(count<=0){
                pstmt=con.prepareStatement("insert into login(firstname,lastname,email,password) values(?,?,?,?)"); //sql insert query
		pstmt.setString(1,firstname);
		pstmt.setString(2,lastname);
		pstmt.setString(3,email);
		pstmt.setString(4,password);
                pstmt.executeUpdate(); //execute query
                pstmt=con.prepareStatement("insert into profiledb(email,address,mobileno,gender) values(?,?,?,?)"); //sql insert query
                pstmt.setString(1,email);
		pstmt.setString(2,null);
		pstmt.setString(3,null);
		pstmt.setString(4,null);
                pstmt.executeUpdate(); 

		
                request.setAttribute("successMsg","Daftar Selesai...! Sila log masuk"); //register success messeage
                }else{
                    request.setAttribute("failedMsg","Daftar Gagal...! Emel telah diambil...");
                }
		

		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
%>  
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>iTHINK4SDLC DAFTAR</title>

	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/login-register.css">
	
	<!-- javascript for registeration form validation-->
	<script>	
	
		function validate()
		{
			var first_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var last_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var email_valid= /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/; //pattern valid email validation
			var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/; //pattern password allowed A to Z, a to z, 0-9, !@#$%&*()<> charecter 
			
			var fname = document.getElementById("fname"); //textbox id fname
            var lname = document.getElementById("lname"); //textbox id lname
            var email = document.getElementById("email"); //textbox id email
            var password = document.getElementById("password"); //textbox id password
			
			if(!first_name.test(fname.value) || fname.value=='') 
            {
				alert("Enter Firstname Alphabet Only....!");
                fname.focus();
                fname.style.background = '#f08080';
                return false;                    
            }
			if(!last_name.test(lname.value) || lname.value=='') 
            {
				alert("Enter Lastname Alphabet Only....!");
                lname.focus();
                lname.style.background = '#f08080';
                return false;                    
            }
			if(!email_valid.test(email.value) || email.value=='') 
            {
				alert("Enter Valid Email....!");
                email.focus();
                email.style.background = '#f08080';
                return false;                    
            }
			if(!password_valid.test(password.value) || password.value=='') 
            {
				alert("Password Must Be 6 to 12 and allowed !@#$%&*()<> character");
                password.focus();
                password.style.background = '#f08080';
                return false;                    
            }
		}
		
	</script>	

</head>

<body>
<div class="center">
            <img src="images/Logo2.png" style="margin-left: 36%;width: 500px;height: 250px;">
        </div>
    <div class="main-content">

        <form class="form-register" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Daftar</h1>
                    </div>		   		
					<% 
					if(request.getAttribute("successMsg")!=null)
					{
                                            out.println("<p style='color:green'>");
                                            out.println(request.getAttribute("successMsg")); //register success message
					}
                                        if(request.getAttribute("failedMsg")!=null)
					{
                                            out.println("<p style='color:red'>");
                                            out.println(request.getAttribute("failedMsg")); //register fail message
					}
					%>
					</p>
                                        
				   
				   </br>
				   
                    <div class="form-row">
                        <label>
                            <span>Firstname</span>
                            <input type="text" name="txt_firstname" id="fname" placeholder="Enter firstname...">
                        </label>
                    </div>
					<div class="form-row">
                        <label>
                            <span>Lastname</span>
                            <input type="text" name="txt_lastname" id="lname" placeholder="Enter lastname...">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Email</span>
                            <input type="text" name="txt_email" id="email" placeholder="Enter email...">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="txt_password" id="password" placeholder="Enter password...">
                        </label>
                    </div>

					<input type="submit" name="btn_register" value="Register">
					
                </div>
				
                <a href="login.jsp" class="form-log-in-with-existing">Sudah Mempunyai Akaun? <b> Log Masuk Sini </b></a>

            </div>

        </form>

    </div>

</body>

</html>
