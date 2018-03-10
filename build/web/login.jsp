<%-- 
    Document   : login
    Created on : Jul 2, 2016, 1:49:36 PM
    Author     : user
--%>
<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
         <script language="javascript" type="text/javascript">
  function abc()
{
var userId=document.forms["login"]["user"].value;
var userpwd=document.forms["login"]["password"].value;

if (userId==null || userId=="")
  {
  alert("Please Enter USer Id");
  return false;
  }if (userpwd==null || userpwd=="")
  {
  alert("Please Enter Password");
  return false;
  }
}
        </script>
   </head>
   
    <body>
      
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
                        <a href="login.jsp">Home</a>
                    </li>
                     <li>
                        <a href="Registration.html">Registration</a>
                    </li>
                     <li>
                        <a href="Contact.html">Contact US</a>
                    </li>
                     <li>
                        <a href="Blog.html">Blog</a>
                    </li>
                  
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Image Background Page Header -->
    <!-- Note: The background image is set within the business-casual.css file. -->
    <header class="business-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <br>
                                <br>
                    <h1 class="tagline" style="font-size:44px">Binary Education </h1>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-7">
                <h2>About Us</h2>
                <p>BINARY EDUCATION is a leading IT training company based in Raipur, Chhattisgarh. Binary Education started operations in 5 September 2013 as a software training center with software development unit, IT Services and IT Staffing to cater to the needs of the IT industry in general and the software professionals in India. During the journey, BINARY EDUCATION has trained numbers of IT professionals in various software tools and technologies. Many of the leading companies of India's IT industry rely on BINARY EDUCATION for their requirement of highly trained IT professionals.</p>
                
                <p>BINARY EDUCATION is involved in actions across the educational spectrum to involvement at the organizational level. We work with the student or professional at one end and the corporate at the other end creating a dynamic and symbiotic association. Our career orientation workshops and self assessments help in more informed and deliberate choices.</p>
           
            </div>
            <div class="col-sm-5">
                <h2>Login Here </h2>
                 <form name="login" method="get" action="index.jsp" onsubmit="return abc()">
                     <table align="center" border="1" cellpadding="5" cellspacing="2" class="table table-striped table-bordered table-hover">
    	<tr> 
        	<td>User Id:</td>
                <td><input name="user" type="text" /></td>
        </tr>
        
        <tr> 
        	<td>Password:</td>
                <td><input name="password" type="password"  /></td>
        </tr>
        
        <tr> 
            <td colspan="2" style="text-align: center"><input name="btnLogin" class="btn-primary" type="submit" value="LOG IN" />
                <input name="btnReset" class="btn-primary" type="reset" value="RESET" /></td>
        </tr>
        
     
     
        <tr>
            <td><a href="Forget.html">Forget Password</a></td>
             <td>Create an account<a href="Registration.html">Click Here</a></td>
        </tr>
        
       
        
        </table>

        </form>

            </div>
        </div>
        <!-- /.row -->

        <hr>

        <div class="row">
            <div class="col-sm-4">

                <h2>WHY BINARY ?</h2>
                <p>BINARY EDUCATION has played a key role for the growth of the Indian IT sector, by creating skilled manpower to drive its momentum. Having revolutionized the IT Training industry, we have now involved in establishing an innovative model in Higher Education. You need the technology edge that will make you stand out and BINARY EDUCATION does just that. It offers you the latest technology before others and gives you the most comprehensive range of courses. The courses help to create a skilled work force that can contribute to the IT sector.</p>
            </div>
            <div class="col-sm-6">

                <h2>Vision</h2>
                <p>BINARY EDUCATION has envisioned INDIA as a Universal Bank of skilled and trained manpower. And we would like to be the major contributor in this Revolutionary Mission. We at Binary education are striving to provide world class training and filling up the gap of required skilled human resource. We believe in providing quality skills and polishing them as per industry requirements. Our Mantra for success till today has been creating Industry ready professionals for the real world through strengthening the knowledge base of the student and providing a lot of exposure to the IT industry.</p>
                 <h2>Mission</h2>
                <p>Our Mission is to train young minds into industry ready professionals. We strive to provide training at par with international standards. We aim to polish the hidden talents and develop employ-ability skills by exposing them to a range of Real Time learning experiences and developing Entrepreneurial Skills.</p>
         
            </div>
            <div class="col-sm-2">
 <%

     Connection con;
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb?zeroDateTimeBehavior=convertToNull","root","");
     String query=null;
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from tblNotice"); 
     
     out.println("<h3><B><U>Notice Details</U></B></h3><BR></BR>");

     out.println("<marquee direction='down' height='100' scrolldelay='85' scrollamount='6'>");
      
     while(rs.next())
             {
         out.println(rs.getString("message")+"<br />");
        
             }

     out.println("</TABLE>");
     
%>
                  </div>
        </div>
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
    </body>
</html>