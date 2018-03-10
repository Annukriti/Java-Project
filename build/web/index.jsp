<%-- 
    Document   : index
    Created on : Jun 26, 2016, 9:46:51 AM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login jsp Page</title>
    </head>
    <body>
        <%
            String  userId = request.getParameter("user");
            String  userpwd = request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
            String q="Select  * From tblregistration where uid='"+userId+"' and pwd='"+userpwd+"'  ";
            Statement st =con.createStatement();
            ResultSet rs=st.executeQuery(q);
String Name="";
            while(rs.next())
             {
                 Name =  rs.getString("uname");
                session.setAttribute("uname", Name);
                response.sendRedirect("/MyProjectdb/AdminHome.jsp");
             }
            if(Name.equals(null) || Name =="")
            {
                    response.sendRedirect("/MyProjectdb/ErrorPage.jsp");
            }
            
        %>
    </body>
</html>
