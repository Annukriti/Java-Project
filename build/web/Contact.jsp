<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%
            String  uid = request.getParameter("userId");
            String  email = request.getParameter("email");
            String  sub = request.getParameter("subject");
            String  message = request.getParameter("message");
           
            java.util.Date date = new java.util.Date();
            int t=date.getDate();
            int d=date.getMonth();
            int s1=date.getYear();
            String demo=t+"/"+d+"/"+s1;
             Connection con;
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
    
      String q = "Insert into tblfeedback (uname,email,subject,message,sendtime) values('"+uid+"','"+email+"','"+sub+"','"+message+"','"+demo+"')";
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
