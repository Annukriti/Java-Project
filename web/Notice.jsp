<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>VT Batch - Java  2016 </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-frontpage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>
<body>
    <% String wname =  (String)session.getAttribute("uname");
    
             if(wname.equals("") || wname==null)
               {
                 response.sendRedirect("/MyProjectdb/login.jsp");
               }
    else
               {
       %>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">VT Batch - Java  2016</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="AdminHome.jsp">Home</a>
                    </li>
                    <li>
                        <a href="RegDetails.jsp">Registration Detail</a>
                    </li>
                    <li>
                        <a href="Admin.jsp">Blog Details</a>
                    </li>
                    <li>
                        <a href="ContactFeedback.jsp">Contact Us Details</a>
                    </li>
                    <li>
                        <a href="Notice.jsp">Notice Board</a>
                    </li>
                    <li>
                        <a href="LogOut.jsp">Logout</a>
                    </li>
                  
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><h3 style="color:white">Welcome : <% out.print(wname); %></h3></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

  

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            
            <div class="col-sm-6 col-md-offset-3">
               <form name="blog" method="get" action="Notice1.jsp">
         <table border="1" cellpadding="5" cellspacing="2" class="table table-striped table-bordered table-hover">
            <tr>
                <td>Message</td>
                <td><input name="msg" type="text" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center"><input name="btnLogin" class="btn-primary" type="submit" value="Post" /></td>
            </tr>
        </table>
         </form>
       
   
        <%

     Connection con;
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
     String query=null;
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from tblNotice"); 
     
     out.println("<h3><B><U>Notice Details</U></B></h3><BR></BR>");

     out.println("<table border='1' class='table table-striped table-bordered table-hover'>");
      out.println("<TR>");
         out.println("<TD>Message</TD>");
         out.println("</TR>");
     while(rs.next())
             {
         out.println("<TR>");
         out.println("<TD>"+rs.getString("message")+"</TD>");
         out.println("</TR>");
             }

     out.println("</TABLE>");
     
%>
            </div>
        </div>
        <!-- /.row -->

        <hr>

       
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy  2016;Designed and Developed By <a href="http://www.binaryedutech.com/" target="_blank">Binary Education</a></p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->
       
<!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <% } %>
    </body>

</html>
