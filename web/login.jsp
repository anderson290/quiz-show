<%-- 
    Document   : login
    Created on : 05/11/2018, 15:08:40
    Author     : mateus
--%>

<%@page import="br.com.fatecpg.quiz.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<%

    if (logged != null) {
        response.sendRedirect("profile.jsp");
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
        <h1>Login</h1>
        <%
            if (request.getParameter("user") != null) {
                String user = request.getParameter("user").trim();
                if (Database.searchUser(user)) {
                    session.setAttribute("user", user);
                    response.sendRedirect("profile.jsp");
                }
                else {
                    response.sendRedirect("login.jsp");
                }
            }
        %>
        
        <form>
            <label>User</label>
            <input type="text" name="user" required>
            <button type="submit">Login</button>
        </form>
    </body>
</html>
