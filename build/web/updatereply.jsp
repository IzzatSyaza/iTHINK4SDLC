<%-- 
    Document   : updatereply
    Created on : Jan 3, 2021, 4:14:45 PM
    Author     : pichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="jdbc.*"%>
<%@page import="java.sql.*"%>
<%@page import='db.*'%>
<% 
    if(request.getParameter("submit")!=null)
    {
        String title = request.getParameter("title");
        String reply = request.getParameter("reply");
        String email = (String)session.getAttribute("login");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
        pst = con.prepareStatement("update forum_reply_1 set reply = '"+reply+"' where email='"+email+"' and forumtitle='"+title+"'");
        pst.executeUpdate();  
        
        %>
        
        <script>   
            alert("Balas dikemaskini");    
            window.location = 'viewreply.jsp?title=<%=title%>';
       </script>
    <%             
}

%>

<!DOCTYPE html>
<html>
    <head>
        <style>

#box
{
	text-align:center;
	border: 1px solid black;
	background-color: #116466;
	width:1000px;
	margin: auto;
        padding-top: 170px;
}
</style>
<title>KEMASKINI BALAS</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        
         <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
          <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        
    </head>
    <body style="background-color: #c2feff;">
    <div id="tophead">
        <%@ include file='parts/header.jsp'%>
</div>
        <div style="text-align: center;height: 0px;"></div>
        <div id="box">
                        <div class="head1">
                <h1 style="color: white; text-align: center; padding-top: 1px;">Update Replies</h1>
                <br>
            </div>
            <form>
                    <%    
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
                        String title = request.getParameter("title");
                        String id = request.getParameter("id");
                        pst = con.prepareStatement("select * from forum_reply_1 where forumtitle = ? and id=?"); //user want to update question
                        pst.setString(1, title);
                        pst.setString(2, id);

                        rs = pst.executeQuery();
                         while(rs.next())
                         {
                            
                    %>
                        <label class="form-label" style="color: white; font-size: 30px">Title : 
                        <input type="text" class="form-control" placeholder="Title" value="<%= rs.getString("forumtitle")%>" name="title" id="title" value size="200" readonly >
                    </label>
                         <br />
                <br /> 
                        <label class="form-label" style="color: white; font-size: 30px">Replies : 
                        <input type="text" class="form-control" placeholder="Reply" name="reply" value="<%= rs.getString("reply")%>" id="question" style="min-height: 230px; height: 230px; padding-bottom: 200px;" value size="500" required >
                        </label>
                    <% }  %>
                   
                    

                         </br>
         
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-success">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                         <a href="viewreply.jsp?title=<%=title%>"><button width=50px class="btn btn-info" type='button'>back</button></a>
                     </div>  
</form> 
</div>
          <footer id="site-footer">
    <%@ include file="parts/footer.jsp"%>

 </footer>  
    </body>
</html>
