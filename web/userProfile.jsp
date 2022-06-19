<%-- 
    Document   : userProfile
    Author     : Ashraf Aiman(A18CS0155)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>iTHINK4SDLC PROFIL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
    #profile-details {
        background-color: #eee;
        padding: 20px 15px;
        border: 3px solid #666;
        border-radius: 20px;
        font-family: 'DoppioOne';
    }
    #profile-edit{
        background-color: #eee;
        padding: 20px 15px;
        border: 3px solid #666;
        border-radius: 20px;
        font-family: 'DoppioOne';
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
<script>
    $(document).ready(function(){
        let editStatus=false;
        
        $('#edit-profile-button').click(function(){
            if(editStatus == false){
                $('#profile-details').hide();
                $('#profile-edit').show();
                editStatus=true;
            }else{
                $('#profile-details').show();
                $('#profile-edit').hide();
                editStatus=false;
            }
        })
    });

    
</script>


</head>
<body style="background-color: #c2feff;">    
    <div id="tophead">
             <%@ include file="parts/header.jsp"%> 
             </div>

 <%
     try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root",""); //create connection
        String emails =(String)session.getAttribute("login");
        Statement statement = con.createStatement();
        String sql = "select email from login where email = " +"'" +emails+"'";
        String pp="";
        String firstname="";
        String lastname="";
        String gender="";
        ResultSet resultset = statement.executeQuery(sql);
        if(resultset.next()){
            String ppdb = "select profilepicture from profiledb where email = " +"'" +emails+"'";
            resultset = statement.executeQuery(ppdb);
            if(resultset.next()){
                if(resultset.getString("profilepicture") == null)
                    pp = "http://ssl.gstatic.com/accounts/ui/avatar_2x.png";
                else
                    pp = resultset.getString("profilepicture");
            }
            String fromlogin = "select firstname,lastname from login where email = " +"'" +emails+"'";
            resultset = statement.executeQuery(fromlogin);
            if(resultset.next()){
                firstname = resultset.getString("firstname");
                lastname = resultset.getString("lastname");
            
%>           

 <!--    Updated Profile Section                --> 
 <div style="padding-top:9%;"></div>
<br>
<div class="container bootstrap snippet" id="profile-details" >
    <div class="row">
  		<div class="col-sm-3"><!--left col-->      
        <div class="text-center" >
        <img src="<%= pp %>" class="avatar img-circle img-thumbnail" alt="avatar">
      </div></hr><br>
        </div><!--/col-3-->
    	<div class="col-sm-9">      
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                <form class="form" action="EditServlet" method="get" id="registrationForm" >
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" value="<%=resultset.getString("firstname")%>" readonly>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" value="<%=resultset.getString("lastname")%>" readonly>
                          </div>
                      </div>
                </form>
<%    }
    String fromprofiledb = "select address,mobileno,gender,profilepicture from profiledb where email = " +"'" +emails+"'";
    resultset = statement.executeQuery(fromprofiledb);
    String mobileno="",address="";
    if(resultset.next()){
        if(resultset.getString("mobileno") == null && resultset.getString("address")==null)
            {
                mobileno="";
                address="";
                gender="";
            }else{
                mobileno=resultset.getString("mobileno");
                address=resultset.getString("address");
                gender=resultset.getString("gender");
            }
%> 
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile Number</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" value="<%= mobileno %>" readonly>
                          </div>
                      </div>
                      <div class="form-group">
                    <div class="form-group">
                          <div class="col-xs-6">
                             <label for="address"><h4>Address</h4></label>
                              <input type="text" class="form-control" name="address" id="address" value="<%=address%>" readonly>
                          </div>
                      </div>
                    <div class="form-group">
                          <div class="col-xs-6">
                              <label for="gender"><h4>Gender</h4></label><br>
                                <input type="text" class="form-control" id="male" name="gender" value="<%= gender %>" readonly>
                          </div>
                      </div>
              	
                    <div class="col-xs-12" style="text-align: right;">
                        <br>
                        <button class="btn btn-lg btn-success" id="edit-profile-button" ><i class="glyphicon glyphicon-ok-sign"></i> Edit</button>
                    </div>
              <hr>
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</div>
</div>
<%
}
%>

<!--    Edit Profile Section                --> 
<!---->

<div class="container bootstrap snippet" style="display: none"  id="profile-edit">
    <div class="row">
  		<div class="col-sm-3"><!--left col-->      
      <div class="text-center" >
        <img src="<%= pp %>" class="avatar img-circle img-thumbnail" alt="avatar">
      </div></hr><br>    
        </div><!--/col-3-->
    	<div class="col-sm-9">      
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                <form class="form" action="EditServlet" method="get" id="registrationForm" >
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="Enter First Name" value="<%=firstname%>" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="Enter Last Name" value="<%=lastname%>" required>
                          </div>
                      </div>

                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile Number</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="Enter Mobile Number" value="<%=mobileno%>">
                          </div>
                      </div>
                      <div class="form-group">
                    <div class="form-group">
                          <div class="col-xs-6">
                             <label for="address"><h4>Address</h4></label>
                              <input type="text" class="form-control" name="address" id="address" placeholder="enter address" title="Enter Address" value="<%=address%>">
                          </div>
                      </div>
                    <div class="form-group">
                          <div class="col-xs-6" style="font-size: 20px">
                              <c:set var="gender" value="<%=gender%>"/>
                                <label for="gender"><h4>Gender</h4></label><br>
                                <input type="radio" name="gender" required 
                                        value="Male" <c:if test="${gender=='Male'}">checked</c:if>>&nbsp;Male<br/>
                                 <input type="radio" name="gender" 
                                            value="Female" <c:if test="${gender=='Female'}">checked</c:if>>&nbsp;Female
                          </div>
                      </div>

                      <div class="form-group">
                           <div class="col-xs-12" style="text-align: right;">
                              	<input class="btn btn-lg btn-success" type="submit" value="Save" name="submit"><i class="glyphicon glyphicon-ok-sign"></i>
                            </div> 
                      </div>
              	</form>

              <hr>
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</div>
</div>

<%
         }
        }catch(Exception e)
        {
        }
 %>
         <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  
</body>
</html>


