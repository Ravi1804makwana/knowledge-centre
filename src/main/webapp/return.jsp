<%-- 
    Document   : return
    Created on : 23-Apr-2020, 22:58:10
    Author     : Ravikumar Makwana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="controller.*"%>
<%
    int i=Integer.parseInt(request.getParameter("isbn_no"));
    String msg=DAO.returnBook(i);
    response.sendRedirect("returnbook.jsp?msg="+msg+"");
%>