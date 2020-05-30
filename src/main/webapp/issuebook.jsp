<%-- 
    Document   : issuebook
    Created on : 19-Apr-2020, 21:15:52
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
        <title>Issue Book</title>

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
                	<li class="breadcrumb-item active" aria-current="page">Issue Book</li>
		</ol>
        </nav>
</div>
        
        <!-- ##### Courses Content Start ##### -->
        <div class="single-course-content section-padding-100">
            <div class="container" style="overflow-x: auto;">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <h2 style="color: blue;">Issue Books</h2>   
                        <br/>
                        <form action="" method="post">
                            <div class='row'>
                                <div class="form-group" >
                                    <br/>Search Book...... 
                                </div>
                                <div class="form-group">
                                    <select name='search' class="form-control">
                                        <option value="title">Title</option>
                                        <option value="author">Author</option>
                                        <option value="publisher">Publisher</option>
                                    </select>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div class="form-group">
                                    <input type="text" name="searchby" placeholder="keyword" class="form-control col-lg-12"/>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div class="form-group">
                                    <input type="submit" name="submit" class="btn btn-outline-danger"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <table class="table">
                        <tr>
                            <th>ISBN_No</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Stock</th>
                            <th>Issue Book</th>
                        </tr>
                        <%
                            Connection con = (Connection) application.getAttribute("con");
                            Statement stmt = con.createStatement();
                            if (request.getParameter("submit") != null) {
                                ResultSet rs = stmt.executeQuery("Select * from books where " + request.getParameter("search") + " like '%" + request.getParameter("searchby") + "%'");
                                while (rs.next()) {
                                    int isbn_no = rs.getInt("isbn_no");
                                    out.println("<tr>");
                                    out.println("<td>" + isbn_no + "</td>");
                                    out.println("<td>" + rs.getString("title") + "</td>");
                                    out.println("<td>" + rs.getString("author") + "</td>");
                                    out.println("<td>" + rs.getString("publisher") + "</td>");
                                    out.println("<td>" + rs.getInt("stock") + "</td>");
                                    out.println("<td><a href='issue.jsp?isbn_no=" + isbn_no + "' class='btn btn-outline-success'>Issue Book</a></td>");
                                    out.println("</tr>");
                                }
                            }
                        %>
                    </table>
                        <%
                if(request.getParameter("msg")!=null)
                    out.println("<h2 style='color:teal;'>"+request.getParameter("msg")+"</h2>");
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