<%-- 
    Document   : signup
    Created on : 19-Apr-2020, 12:40:27
    Author     : Ravikumar Makwana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Sign Up</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
    <div class="breadcumb-area">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                	<li class="breadcrumb-item active" aria-current="page">Sign Up</li>
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
                            <form action="signupcontroller.jsp" method="post">
                                <h4>Sign Up</h4>
                                <div class="row">
                                    <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <input type="text" required="required" class="form-control" name="fullname" required="required" placeholder="Full Name">
                                        </div>
                                    </div>
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
                                    <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" required="required" placeholder="Email Id">
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <input type="number" class="form-control" required="required" name="phoneno" placeholder="Phone No">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <input type="submit" class="btn clever-btn w-100" value="Sign Up"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Now Countdown -->
        <div class="register-now-countdown mb-100" style="color: teal; font-family: monospace; font-size: 30px;" >
            <%
                if(request.getParameter("response")!=null)
                {
                    out.println(request.getParameter("response"));
                }
            %>
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
