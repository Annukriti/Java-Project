package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>VT Batch - Java  2016 </title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"css/business-frontpage.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("    \n");
      out.write("         <script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("  function abc()\n");
      out.write("{\n");
      out.write("var userId=document.forms[\"login\"][\"user\"].value;\n");
      out.write("var userpwd=document.forms[\"login\"][\"password\"].value;\n");
      out.write("\n");
      out.write("if (userId==null || userId==\"\")\n");
      out.write("  {\n");
      out.write("  alert(\"Please Enter USer Id\");\n");
      out.write("  return false;\n");
      out.write("  }if (userpwd==null || userpwd==\"\")\n");
      out.write("  {\n");
      out.write("  alert(\"Please Enter Password\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("        </script>\n");
      out.write("   </head>\n");
      out.write("   \n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">VT Batch - Java  2016</a>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"login.jsp\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        <a href=\"Registration.html\">Registration</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        <a href=\"Contact.html\">Contact US</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        <a href=\"Blog.html\">Blog</a>\n");
      out.write("                    </li>\n");
      out.write("                  \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <!-- Image Background Page Header -->\n");
      out.write("    <!-- Note: The background image is set within the business-casual.css file. -->\n");
      out.write("    <header class=\"business-header\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                <br>\n");
      out.write("                                <br>\n");
      out.write("                    <h1 class=\"tagline\" style=\"font-size:44px\">Binary Education </h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Page Content -->\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("        <hr>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-7\">\n");
      out.write("                <h2>About Us</h2>\n");
      out.write("                <p>BINARY EDUCATION is a leading IT training company based in Raipur, Chhattisgarh. Binary Education started operations in 5 September 2013 as a software training center with software development unit, IT Services and IT Staffing to cater to the needs of the IT industry in general and the software professionals in India. During the journey, BINARY EDUCATION has trained numbers of IT professionals in various software tools and technologies. Many of the leading companies of India's IT industry rely on BINARY EDUCATION for their requirement of highly trained IT professionals.</p>\n");
      out.write("                \n");
      out.write("                <p>BINARY EDUCATION is involved in actions across the educational spectrum to involvement at the organizational level. We work with the student or professional at one end and the corporate at the other end creating a dynamic and symbiotic association. Our career orientation workshops and self assessments help in more informed and deliberate choices.</p>\n");
      out.write("           \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-5\">\n");
      out.write("                <h2>Login Here </h2>\n");
      out.write("                 <form name=\"login\" method=\"get\" action=\"index.jsp\" onsubmit=\"return abc()\">\n");
      out.write("                     <table align=\"center\" border=\"1\" cellpadding=\"5\" cellspacing=\"2\" class=\"table table-striped table-bordered table-hover\">\n");
      out.write("    \t<tr> \n");
      out.write("        \t<td>User Id:</td>\n");
      out.write("                <td><input name=\"user\" type=\"text\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("        <tr> \n");
      out.write("        \t<td>Password:</td>\n");
      out.write("                <td><input name=\"password\" type=\"password\"  /></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("        <tr> \n");
      out.write("            <td colspan=\"2\" style=\"text-align: center\"><input name=\"btnLogin\" class=\"btn-primary\" type=\"submit\" value=\"LOG IN\" />\n");
      out.write("                <input name=\"btnReset\" class=\"btn-primary\" type=\"reset\" value=\"RESET\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("     \n");
      out.write("     \n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"Forget.html\">Forget Password</a></td>\n");
      out.write("             <td>Create an account<a href=\"Registration.html\">Click Here</a></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <hr>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("                <h2>WHY BINARY ?</h2>\n");
      out.write("                <p>BINARY EDUCATION has played a key role for the growth of the Indian IT sector, by creating skilled manpower to drive its momentum. Having revolutionized the IT Training industry, we have now involved in establishing an innovative model in Higher Education. You need the technology edge that will make you stand out and BINARY EDUCATION does just that. It offers you the latest technology before others and gives you the most comprehensive range of courses. The courses help to create a skilled work force that can contribute to the IT sector.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-6\">\n");
      out.write("\n");
      out.write("                <h2>Vision</h2>\n");
      out.write("                <p>BINARY EDUCATION has envisioned INDIA as a Universal Bank of skilled and trained manpower. And we would like to be the major contributor in this Revolutionary Mission. We at Binary education are striving to provide world class training and filling up the gap of required skilled human resource. We believe in providing quality skills and polishing them as per industry requirements. Our Mantra for success till today has been creating Industry ready professionals for the real world through strengthening the knowledge base of the student and providing a lot of exposure to the IT industry.</p>\n");
      out.write("                 <h2>Mission</h2>\n");
      out.write("                <p>Our Mission is to train young minds into industry ready professionals. We strive to provide training at par with international standards. We aim to polish the hidden talents and develop employ-ability skills by exposing them to a range of Real Time learning experiences and developing Entrepreneurial Skills.</p>\n");
      out.write("         \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-2\">\n");
      out.write(" ");


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
     

      out.write("\n");
      out.write("                  </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <hr>\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <p>Copyright &copy  2016;Designed and Developed By <a href=\"http://www.binaryedutech.com/\" target=\"_blank\">Binary Education</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.row -->\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
