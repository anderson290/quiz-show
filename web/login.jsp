<%-- 
    Document   : login
    Created on : 05/11/2018, 15:08:40
    Author     : mateus
--%>

<%@page import="br.com.fatecpg.quiz.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<%    if (logged != null) {
        response.sendRedirect("profile.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="container">
            <div class="login">
                <h1 class="mb-3">Login</h1>
                <%            if (request.getParameter("user") != null) {
                        String user = request.getParameter("user").trim();
                        if (Database.searchUser(user)) {
                            session.setAttribute("user", user);
                            response.sendRedirect("profile.jsp");
                        } else {
                            response.sendRedirect("login.jsp");
                        }
                    }
                %>

                <form>
                    <div class="form-group">
                        <input class="form-control mb-3" type="text" id="user" name="user" placeholder="Username" required>
                        <button type="submit" class="btn btn-login">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
