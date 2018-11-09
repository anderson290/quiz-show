<%-- 
    Document   : profile
    Created on : 05/11/2018, 15:52:12
    Author     : mateus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<%  if (logged == null) {
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
        
        <div class="jumbotron text-center">
            
            <h1>Bem Vindo, <%= logged%></h1>
        </div>
        <div class="container mt-5">

            <div class="row mt-5">

                <div class="col-6">
                    <h2 class="text-center">Seus Últimos Testes</h2>
                    <table class="table table-striped mt-2">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Nota</th>                               
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Anderson</td>
                                <td>9</td>

                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-6">
                    <h2 class="text-center">Ranking</h2>
                    <table class="table table-striped mt-2">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Nota</th>                               
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Anderson</td>
                                <td>9</td>

                            </tr>
                        </tbody>
                    </table>
                </div>
                <button class="btn btn-quiz" href="quiz.jsp">Realizar Quiz</button>
            </div>
            
        </div>
    </body>
</html>
