<%-- 
    Document   : home
    Created on : 04/11/2018, 16:54:21
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
            Seja Bem Vindo
        </div>
        <div class="container">
            <div class="row mt-2">
                
                <div class="col-6">
                    <h2>Ultimos Testes Realizados</h2>
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
                    <h2>Ranking</h2>
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
            </div>
        </div>

    </body>
</html>
