<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog jsp Page</title>
    </head>
    <body>
        <%
            String  uid = request.getParameter("userId");
            String  ttl = request.getParameter("title");
            String  msg = request.getParameter("message");
            String  stat = "N";
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
            java.util.Date date = new java.util.Date();
            int t=date.getDate();
            int d=date.getMonth();
            int s1=date.getYear();
            String demo=t+"/"+d+"/"+s1;
            
            String q = "Insert into tblblog (uname,title,message,bdate,status) values('"+uid+"','"+ttl+"','"+msg+"','"+demo+"','"+stat+"')";
            Statement st = con.createStatement();
            int count = st.executeUpdate(q);
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

