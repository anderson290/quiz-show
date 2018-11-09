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
            <!--Questão-->
            <div class="row">
                <div class="quiz">
                    <h2>Questão 1</h2>
                    <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Praesent faucibus imperdiet arcu nec blandit. Nullam nulla lacus, 
                        venenatis sit amet sollicitudin vel, elementum a quam.</h4>
                    <hr/>
                    <div class="form-group">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optradio"><h6>Resposta1</h6>
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optradio"><h6>Resposta2</h6>
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optradio"><h6>Resposta3</h6>
                            </label>
                        </div>
                    </div>
                </div>
                <!--Questão Fim-->
            </div>
            <div class="row">
                 <a href="profile.jsp" class="btn btn-quiz">Finalizar Quiz</a>
            </div>
        </div>

    </body>
</html>
