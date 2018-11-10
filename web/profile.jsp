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

                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
                    <h2 class="text-center">Seus Últimos Testes</h2>
                    <table class="table table-striped mt-2">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Nota</th>
                                <th>Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                DateFormat df1 = new SimpleDateFormat("dd/MM/yyyy - HH:mm");
                                int limitP = 0;
                                for (Historic h : Historic.sortByDate(Database.getHistoric())) {
                                    if (h.getUser().equals(logged) && limitP <= 9) {
                                        limitP++;
                            %>
                            <tr>
                                <td><%= h.getUser()%></td>
                                <td><%= h.getResult()%></td>
                                <td><%= df1.format(h.getDate())%></td>
                            </tr>
                            <% }
                                }%>
                        </tbody>
                    </table>
                </div>

                <div class="col-6">
                    <%@ include file="WEB-INF/JSPF/ranking.jspf" %>
                </div>
                <a href="quiz.jsp" class="btn btn-quiz">Realizar Quiz</a>
            </div>

        </div>
    </body>
</html>
