<%@page import="java.sql.*"%>
<%
    if(application.getAttribute("con")==null)
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/U9ZbCM5Ki3?useTimezone=true&serverTimezone=UTC", "U9ZbCM5Ki3", "ZvQwR9Xkdr");
        application.setAttribute("con", con);
    }
%>