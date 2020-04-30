<%-- 
    Document   : issue
    Created on : 23-Apr-2020, 22:09:37
    Author     : Ravikumar Makwana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,model.*,controller.*"%>
<%
    if (request.getParameter("isbn_no") != null) {
        int isbn_no = Integer.parseInt(request.getParameter("isbn_no"));
        String msg = DAO.issueBook(isbn_no);
        response.sendRedirect("issuebook.jsp?msg="+msg+"");
    }
%>