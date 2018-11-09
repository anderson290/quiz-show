<%-- 
    Document   : quiz
    Created on : 08/11/2018, 22:31:40
    Author     : usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="jumbotron text-center">
            <h1>Responda o Quiz Abaixo!</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="quiz">
                    
                </div>
             <a href="profile.jsp" class="btn btn-quiz">Finalizar Quiz</a>
            </div>
        </div>
       
    </body>
</html>
