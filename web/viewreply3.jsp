<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="jdbc.*"%>
<%@page import="java.sql.*"%>
<%@page import='db.*'%>


<!DOCTYPE html>
<html>
    <head>
        <style>

table
{
   border-collapse:collapse;
   width:92%;
   margin: auto;
   border: 2px solid black;
}

td
{
   height:80px;
   font-size: 25px;
   color: white;
   text-align: center;
   
}

#title{
    text-align: left;
}

tr
{
    background-color:#116466;
    height: 80px;
}

th
{
    background-color:#116466;
    color:white;
    text-align: center;
    font-size: 30px;
}

#box
{
    background-color:#116466;
    border: 1px solid black;
    width:92%;
}
.btn-group{
    font-size: 18px;
}
#bordertitle{
    border-top: 2px solid black;
    border-left: 2px solid black;
    border-right: 2px solid black;

}
#bordertitle-button{

    border-left: 2px solid black;
    border-right: 2px solid black;
    border-bottom: 2px solid black;

}
#tajukborder{
    border: 2px solid black;

}
#reply{
    border-right: 2px solid black;
    border-bottom: 2px solid black;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ITHINK4SDLC FORUM 1.3</title>

        
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
             <%@ include file="parts/header.jsp"%> 
             </div>
        <div style="padding-top: 10%"></div>
    <table>
            <tr id="bordertitle">
                <td colspan="3"><h2  style="color: white; text-align: center; "><br>Forum 3: Topik 1.3 Menghasilkan Satu Projek Mini Berdasarkan Situasi Penyelesaian Masalah Dengan Merujuk Fasa Pembangunan Atur Cara</h2></td>
            </tr>
            <tr>
                <td id="bordertitle-button" style="text-align:left;">
                    <div class="btn-group">
                        <a href="viewforum1.jsp"><button class="createforum circular"> Back</button></a>
                    </div>
                    
                </td>
                
            </tr>
 
                    
                    <%  //try{
                        String email = (String)session.getAttribute("login");  
                        String stitle = request.getParameter("title");
                        Connection con;
                        ResultSet rs;
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
                        ArrayList<String> replies = new ArrayList<String>();
                        Statement st = con.createStatement();
                        String question = "";
                        String name="";
                        String title = "";
                        String date = "";
                        rs = st.executeQuery("select * from forum_3");
                        while(rs.next())
                        {
                            title = rs.getString("title");
                            date = rs.getString("date");
                            question = rs.getString("question");
                            String creatoremail = rs.getString("email");
                           if(stitle.equals(title)){ // View Question
                            String getdetails = "Select * from login where email = '" + rs.getString("email") +"'";
                            rs = st.executeQuery(getdetails);
                            while(rs.next()){
                                name = rs.getString("firstname") + " " + rs.getString("lastname");
                            }
                    %>      
                    
                    <tr><td id="tajukborder" ><h2 style="color: white; text-align: center;">Tajuk Forum: <%=title%></h2></td></tr>         
                    
                    <tr>
                    <td style="border-right: 2px solid black;">
                        <div style="text-indent:10px;padding-top:10px;"><h4 class="media-heading" style="text-align: left;"><div style="text-align:left;">
                                <img src="images/profile1.jfif"  style="width: 45px;">&nbsp;<%=name%> <small><i> Posted on <%=date%></i></small></h4>
                    <p class="comment" style="text-align: left;"><%= question%></p></div>
                    </td></tr>   
            <%
                        if(session.getAttribute("login") != null)
                        {
                            if(creatoremail.equals(session.getAttribute("login"))){%>
                    <tr >
                        <td id="reply" ><div class="btn-group" style="left: 41%">
                            <a href="updateforum3.jsp?title=<%=title%>"><button class="btforum circular">Edit</button></a>
                            <a href="deleteforum3.jsp?title=<%=title%>" onclick="return confirm('Are you sure you want to delete?')" ><button class="btforum circular">Delete</button></a>
                            <a href="./replyforum3.jsp?title=<%=title%>"><button class="btforum circular">Reply</button></a>
                            </div></td>
                             
               <% }else{%>
               <td id="reply"><div class="btn-group" style="left: 46.5%;">
                            <a href="./replyforum3.jsp?title=<%=title%>"><button class="btforum circular">Reply</button></a>
                        </div>
                    </td>
                </tr>
               <%
                }}
            %>
                       
                              
                <%        
                  }
                }
                    
                   //Display Replies
                   rs = st.executeQuery("select * from forum_reply_3 where forumtitle='"+title+"'");
                    ArrayList<String> emailreply = new ArrayList<String>();
                    ArrayList<String> repliesName = new ArrayList<String>();
                    ArrayList<String> replyID = new ArrayList<String>();

                   while(rs.next()){
                        emailreply.add(rs.getString("email")); // email replies
                        replies.add(rs.getString("reply"));
                        replyID.add(rs.getString("id"));

                    }
                    for(int i = 0 ; i < emailreply.size();i++){
                    String getdetails = "Select * from login where email = '" + emailreply.get(i) +"'";
                    rs = st.executeQuery(getdetails);
                    while(rs.next()){
                    repliesName.add(rs.getString("firstname") + " " + rs.getString("lastname"));
                }
                }
                    
                    for(int i = 0 ; i < emailreply.size();i++){ %>
                    <tr>   
                        <td style="border-right: 2px solid black;"><div style="text-indent: 100px;padding-top:10px;">
                            <div style="text-align:left;">
                                
                                <h4 class="media-heading" style="text-align: left;"><img src = "images/profile1.jfif" class="media-object" style="width:45px">&nbsp;<%=(repliesName.get(i))%></h4>    
                            </div>
                                
                                <p style="text-align: left; color:white;text-indent: 8.7%;"> <%=(replies.get(i))%>  </p> 
                         </div>   
                    </tr>   
                        <%if(session.getAttribute("login") != null){
                            if(emailreply.get(i).equals(session.getAttribute("login"))){%>
                        <tr><td id="reply"><div class="btn-group" style="left: 44%;">
                            <a href="updatereply3.jsp?title=<%=title%>&id=<%=(replyID.get(i))%>"><button class="btforum circular">Edit</button></a>
                            <a href="deletereply3.jsp?title=<%=title%>&id=<%=(replyID.get(i))%>" onclick="return confirm('Are you sure you want to delete?')" ><button class="btforum circular">Delete</button></a>
                        </div>
                            </td> </tr>   
                          <%  }
                        }
                    }                
%>   
</br>
</table>
 <footer id="site-footer">
        <%@ include file="parts/footer.jsp"%>
     </footer>     
    </body>
</html>