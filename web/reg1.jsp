<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin1 jsp Page</title>
    </head>
    <body>
        <%
        String b = request.getParameter("uid");
        Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
        
        Statement st = con.createStatement();
        String query = "Update tblregistration set status='Y' where uid='"+b+"'";
        int count = st.executeUpdate(query);
         if(count>0)
             {
                response.sendRedirect("/MyProjectdb/Success.html");
             }
            else
            {
                response.sendRedirect("/MyProjectdb/fail.html");
                    
            }
        %>
    </body>
</html>
