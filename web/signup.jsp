<%-- 
    Document   : signup
    Created on : 05/11/2018, 16:46:59
    Author     : mateus
--%>

<%@page import="br.com.fatecpg.quiz.Database"%>
<%@page import="br.com.fatecpg.quiz.User"%>
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
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="container">
            <div class="login">
                <h1 class="mb-3">Cadastro</h1>
                <%            if (request.getParameter("user") != null) {
                        String user = request.getParameter("user");
                        User u = new User(user);
                        Database.getUsers().add(u);
                        response.sendRedirect("login.jsp");
                    }
                %>
                <form>
                    <div class="form-group">
                        <input class="form-control mb-3" type="text" id="user" name="user" placeholder="Username" required>
                        <button type="submit" class="btn btn-login">Cadastrar</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
