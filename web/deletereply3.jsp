<%-- 
    Document   : deletereply
    Created on : Jan 3, 2021, 3:16:51 PM
    Author     : pichu
--%>


<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="jdbc.*"%>
<%@page import="java.sql.*"%>
<%@page import='db.*'%>

<% 
        String title = request.getParameter("title");
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
        //Delete Forum Replies
        pst = con.prepareStatement("delete from forum_reply_3 where forumtitle = ? AND id=?");
        pst.setString(1, title);
        pst.setString(2, id);

        pst.executeUpdate(); 
        
        %>
   <script>
        alert('Balas Dibuang');
       window.location = 'viewreply3.jsp?title=<%=title%>';
    </script>

        

      
