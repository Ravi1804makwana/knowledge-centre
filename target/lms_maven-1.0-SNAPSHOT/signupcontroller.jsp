<%-- 
    Document   : signupcontroller
    Created on : 19-Apr-2020, 14:44:58
    Author     : Ravikumar Makwana
--%>
<jsp:include page="dbconnect.jsp"/>
<%@page  import="java.sql.*,java.util.regex.*" %>
<%
    String fullName=request.getParameter("fullname");
    String pwd=request.getParameter("pwd");
    String email=request.getParameter("email");
    String phoneNo=request.getParameter("phoneno");
    String userName=request.getParameter("username");
    String msg="";
    if(!Pattern.matches("^[a-zA-Z ]{5,32}",fullName))
        msg+="Please enter the Valid full Name<br/>Full name must be characters and 5 to 32 characters are valid<br/>";
    if(!Pattern.matches("^[a-zA-Z0-9]+[@-_.^]+[a-zA-Z0-9]*", pwd))
        msg+="Please enter the Valid Password<br/>Password contain at least one special symbols<br/>";
    if(!Pattern.matches("^[a-zA-Z0-9]+[a-zA-Z0-9.-_]*@[a-zA-Z0-9]+.[a-zA-Z0-9.]+", email))
        msg+="Please enter the Valid email address<br/>";
    if(!Pattern.matches("^[9|8][0-9]{9,10}$", phoneNo))
        msg+="Please enter the valid phone no";
    if(msg.length()==0)
    {
        Connection con=(Connection) application.getAttribute("con");
        Statement stmt=con.createStatement();
        int r=stmt.executeUpdate("Insert into signup values (NULL,'"+fullName+"','"+userName+"','"+pwd+"','"+email+"','"+phoneNo+"')");
        if(r!=0)
            msg="Sign Up Successful ! ! !";
        else
            msg="Sign up Failed";
    }   
    response.sendRedirect("signup.jsp?response="+msg);
%>