<%-- 
    Document   : LogOut
    Created on : Jun 29, 2016, 8:24:30 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout jsp Page</title>
    </head>
    <body>
        <%
          
          session.invalidate();
          response.sendRedirect("/MyProjectdb/login.jsp");
        %>
       
        
    </body>
</html>
<%--create table tblNotice (message varchar(255));--%>