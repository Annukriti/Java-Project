<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome jsp Page</title>
    </head>
    <body>
        <h1 align="center"><font color="Red"><b>You Are Successfully Logged In...</b></font></h1>
        <%
        
           String a= (String) session.getAttribute("uname");
                     out.println(a);
           
        %>
        <a style="padding:10px" href="LogOut.jsp" >Log Out</a>
    </body>
</html>
