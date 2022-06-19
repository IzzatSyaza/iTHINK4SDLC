
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="jdbc.*"%>
<%@page import="java.sql.*"%>
<%@page import='db.*'%>

<% 
        String title = request.getParameter("title");
        Connection con;
        PreparedStatement pst;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/dbuser","root","");
        //Delete Forum Question
        pst = con.prepareStatement("delete from forum_1 where title = ?");
        pst.setString(1, title);
        pst.executeUpdate();
        pst = con.prepareStatement("delete from forum_reply_1 where forumtitle = ?");
        pst.setString(1, title);
        pst.executeUpdate();
        
        %>
        
        <script>
            alert('Forum Dibuang');
           window.location = 'viewforum1.jsp';
           </script>
      