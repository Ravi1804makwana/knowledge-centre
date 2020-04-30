<%-- 
    Document   : returnbook
    Created on : 23-Apr-2020, 22:19:59
    Author     : Ravikumar Makwana
--%>
<%
    if(session.getAttribute("uid")==null)
        response.sendRedirect("login.jsp");
%>
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
        <title>Return Books</title>

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
                    <li class="breadcrumb-item"><a href="transaction.jsp">Transaction</a></li>
                	<li class="breadcrumb-item active" aria-current="page">Return / Renew Book</li>
		</ol>
        </nav>
</div>
        
        <!-- ##### Courses Content Start ##### -->
        <div class="single-course-content section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <h2 style="color: blue;">Return Books / Renew Books</h2>   
                        <br/>
                    </div>
                    <table class="table">
                        <tr>
                            <th>ISBN_No</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Renew Book</th>
                            <th>Return Book</th>
                        </tr>
                        <%
                            Connection con = (Connection) application.getAttribute("con");
                            Statement stmt = con.createStatement();
                            Statement stmt1 = con.createStatement();
                            ResultSet rs1, rs = stmt.executeQuery("Select * from status where uid=" + DAO.user.getUid() + "");
                            while (rs.next()) {
                                int isbn_no = rs.getInt("isbn_no");
                                rs1 = stmt1.executeQuery("Select * from books where isbn_no=" + isbn_no + "");
                                rs1.next();
                                out.println("<tr>");
                                out.println("<td>" + rs1.getInt("isbn_no") + "</td>");
                                out.println("<td>" + rs1.getString("title") + "</td>");
                                out.println("<td>" + rs1.getString("author") + "</td>");
                                out.println("<td>" + rs1.getString("publisher") + "</td>");
                                out.println("<td><a href='renew.jsp?isbn_no=" + rs1.getInt("isbn_no") + "' class='btn btn-outline-success'>Renew Book</a></td>");
                                out.println("<td><a href='return.jsp?isbn_no=" + rs1.getInt("isbn_no") + "' class='btn btn-outline-success'>Return Book</a></td>");
                                out.println("</tr>");
                            }

                        %>
                    </table>
                    <%                            if (request.getParameter("msg") != null) {
                            out.println("<h2 style='color:teal;'>" + request.getParameter("msg") + "</h2>");
                        }
                    %>
                </div>
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