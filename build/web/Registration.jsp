<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration
            jsp Page</title>
    </head>
    <body bgcolor="#FFFF99">
        <%
            String  u = request.getParameter("userid");
            String  p = request.getParameter("password");
            String  un = request.getParameter("username");
            String  fn = request.getParameter("fathername");
            String  d = request.getParameter("dofb");
            String  m = request.getParameter("mobileno");
            String  a = request.getParameter("address");
            String  pi = request.getParameter("pincode");
            String  s = "N";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
            String q = "Insert into tblregistration(uid,pwd,uname,fname,dob,mobile,address,pincode,status) values('"+u+"','"+p+"','"+un+"','"+fn+"','"+d+"','"+m+"','"+a+"','"+pi+"','"+s+"')";
            Statement st =con.createStatement();
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
