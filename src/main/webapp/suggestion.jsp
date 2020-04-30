<jsp:include page="dbconnect.jsp"/>
<%@page  import="java.sql.*" %>
<%
    String text = request.getParameter("text");
    Connection con=(Connection) application.getAttribute("con");
    Statement stmt=con.createStatement();
    int r1 = stmt.executeUpdate("Insert into suggestion values (NULL,'" + text + "')");
    if (r1 != 0) {
        out.println("Thanking for Suggestion ! ! !");
    }
%>