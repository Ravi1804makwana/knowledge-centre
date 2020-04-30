<%-- 
    Document   : reviews
    Created on : 23-Apr-2020, 23:28:06
    Author     : Ravikumar Makwana
--%>
<jsp:include page="dbconnect.jsp"/>
<%@include  file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,model.*,controller.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Suggestions</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">

    </head>

    <body>
        <%!
        String msg;
        %>
        <%
            if (request.getParameter("submit") != null) {
                String text = request.getParameter("text");
                Connection con = (Connection) application.getAttribute("con");
                Statement stmt = con.createStatement();
                int r1 = stmt.executeUpdate("Insert into suggestion values (NULL,'" + text + "')");
                if (r1 != 0) {
                    msg="Thanking for Suggestion ! ! !";
                }
                else
                {
                    msg="Please try again ! ! !";
                }
            }
        %>
        <!-- ##### Courses Content Start ##### -->
        <div class="breadcumb-area">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
                	<li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="transaction.jsp">Transaction</a></li>
                	<li class="breadcrumb-item active" aria-current="page">Reviews</li>
		</ol>
        </nav>
</div>
        <div class="single-course-content section-padding-100">
            <div class="container">
                <h2 style="color: blue;">Suggestions </h2>
                <br/>
                <form method="post">
                    <textarea cols="40" required="required" required="required" name="text" rows="5"  placeholder="Please enter the suggestions ! ! !" class="form-control"></textarea>
                    <br/>
                    <input type="submit" name="submit" value="Submit" class="btn btn-outline-danger"/>
                </form>
           <br/>     
                <%
            if(msg!=null)
            {
                out.println("<h3 style='color:teal;'>"+msg+"</h3>");
            }
        %>
            </div>
            
        </div>
        
        <!-- ##### Courses Content End ##### -->

        <!-- ##### All Javascript Script ##### -->
        <!-- jQuery-2.2.4 js -->
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