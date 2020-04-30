<%-- 
    Document   : login
    Created on : 19-Apr-2020, 18:59:57
    Author     : Ravikumar Makwana
--%>
<%@page contentType="text/html" import="controller.*,model.*" pageEncoding="UTF-8"%>
<%@include  file="dbconnect.jsp" %>
<%!String msg="";%>
<%
    if(request.getParameter("login")!=null)
    {
        String username=request.getParameter("username");
        String pwd=request.getParameter("pwd");
        Connection con=(Connection)application.getAttribute("con");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("Select * from signup");
        int c=0,uid=0;
        String uname="";
        while(rs.next())
        {
            if(rs.getString("username").equals(username) && rs.getString("pwd").equals(pwd))
            {
                c=1;
                uid=rs.getInt("id");
                uname=rs.getString("username");
                break;
            }
            else
                c=0;
        }
        if(c==0)
            msg="Login Failed ! ! !<br/>Please enter the valid username and password.";
        else
        {
            session.setAttribute("uid", uid);
            session.setAttribute("uname", uname);
            DAO d=new DAO();
            d.login(uid);
            response.sendRedirect("index.jsp");
        }
    }
%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <div class="breadcumb-area">
        <!-- Breadcumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Login</li>
            </ol>
        </nav>
    </div>
    <section class="register-now section-padding-100-0 d-flex justify-content-between align-items-center" style="background-image: url(img/core-img/texture.png);">
        <!-- Register Contact Form -->
        <div class="register-contact-form mb-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="forms">
                            <form action="" method="post">
                                <h4>Login</h4>
                                <div class="row">
                                    <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="username" required="required" placeholder="User Name">
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="pwd" required="required" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <input type="submit" class="btn clever-btn w-100" name="login"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Now Countdown -->
        <div class="register-now-countdown mb-100" style="color: red; font-family: monospace; font-size: 30px;" >
            <%=msg%>
            <rssapp-carousel id="xXhLLW2vBoDe9Ate"></rssapp-carousel><script src="https://widget.rss.app/v1/carousel.js" type="text/javascript" async></script>
        </div>
    </section>
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