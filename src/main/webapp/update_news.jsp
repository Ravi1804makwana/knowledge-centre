<%-- 
    Document   : update_news
    Created on : 29-Apr-2020, 21:00:11
    Author     : Ravikumar Makwana
--%>

<%
    if (session.getAttribute("uname") != null) {
        if (!session.getAttribute("uname").toString().equals("admin")) {
            response.sendRedirect("login.jsp");
        }
    } else {
        response.sendRedirect("login.jsp");
    }
%>
<%@include  file="dbconnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@include file="header.jsp" %>
<%!
    String m="";
%>
<%
    if(request.getParameter("update")!=null)
    {
        int id=Integer.parseInt(request.getParameter("id"));
        String title=request.getParameter("title");
        String msg=request.getParameter("msg");
        Connection con=(Connection)application.getAttribute("con");
        Statement stmt=con.createStatement();
        int r=stmt.executeUpdate("Update news set title='"+title+"', msg='"+msg+"' where id='"+id+"'");
        if(r==1)
            m="News Update Successfully ! ! !";
        else
            m="Some of Error Occures ! ! !";
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Panel- Update News</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

    </head>
    <body>
        <div class="breadcumb-area">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item"><a href="admin.jsp">Admin Panel</a></li>
                    <li class="breadcrumb-item"><a href="updatenews.jsp">Update News </a></li>
                    <li class="breadcrumb-item active" aria-current="page">Admin Panel-Update News</li>
                </ol>
            </nav>
        </div>
        <div class="single-course-content section-padding-100">
            <div class="container">
                <h2 style="color: teal;">Update News</h2>
                <%!
                    String title="";
                    String msg="";
                %>
                <%
                    Connection con=(Connection)application.getAttribute("con");
                    Statement stmt=con.createStatement();
                    int id=Integer.parseInt(request.getParameter("id"));
                    ResultSet rs=stmt.executeQuery("Select * from news where id='"+id+"'");
                    rs.next();
                    title=rs.getString("title");
                    msg=rs.getString("msg");
                %>
                <form method="post">
                    <div>
                        <input type="text" class="form-control col-lg-5" name="title" value="<%= title %>" />
                        <br/>
                        <textarea class="form-control col-lg-5"  rows="5" name="msg" ><%= msg %></textarea>
                        <br/>
                        <input type="submit" name="update" class="btn btn-outline-primary"/>
                    </div>
                </form>
                <br/><br/>
                <%
                    out.println("<h3 style='color:teal;'>"+m+"</h3>");
                    m="";
                %>
            </div>
        </div>

        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
        <script src="assets/vendor/counterup/counterup.min.js"></script>
        <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/venobox/venobox.min.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>


        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/bootstrap/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <!-- All Plugins js -->
        <script src="js/plugins/plugins.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>
    </body>
</html>
<%@include file="footer.jsp" %>
