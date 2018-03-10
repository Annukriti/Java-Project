<%-- 
    Document   : AdminHome
    Created on : Jul 2, 2016, 1:42:39 PM
    Author     : user
--%>

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
            
            <div class="col-sm-8 col-md-offset-2">
                <h2>About Us</h2>
                <p>BINARY EDUCATION is a leading IT training company based in Raipur, Chhattisgarh. Binary Education started operations in 5 September 2013 as a software training center with software development unit, IT Services and IT Staffing to cater to the needs of the IT industry in general and the software professionals in India. During the journey, BINARY EDUCATION has trained numbers of IT professionals in various software tools and technologies. Many of the leading companies of India's IT industry rely on BINARY EDUCATION for their requirement of highly trained IT professionals.</p>
                
                <p>BINARY EDUCATION is involved in actions across the educational spectrum to involvement at the organizational level. We work with the student or professional at one end and the corporate at the other end creating a dynamic and symbiotic association. Our career orientation workshops and self assessments help in more informed and deliberate choices.</p>
           
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
