<%-- 
    Document   : profile
    Created on : 05/11/2018, 15:52:12
    Author     : mateus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<%
    if (logged == null) {
        response.sendRedirect("login.jsp");
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <h1>Profile</h1>
        <p><%= logged %></p>
    </body>
</html>
