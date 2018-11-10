<%-- 
    Document   : quiz
    Created on : 08/11/2018, 22:31:40
    Author     : usuario
--%>
<%@page import="br.com.fatecpg.quiz.Historic"%>
<%@page import="java.util.Calendar"%>
<%@page import="br.com.fatecpg.quiz.Database"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="jumbotron text-center">
            <h1>Responda o Quiz Abaixo!</h1>
             <% if(request.getParameter("finalizar")!=null) { %>
                    <% 
                        int soma = 0;
                        for (Question q: Database.getQuestions()){
                            String resposta = request.getParameter(q.getQuestion());
                            if (resposta != null && resposta.equals(q.getAnswer())){
                                soma++;
                            }
                        }
                        double media = 10.0 * ((double) (soma) / (double) (Database.getQuestions().size()));
                        
                        Calendar calendar = Calendar.getInstance();
                        calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DATE),
                                calendar.get(Calendar.HOUR_OF_DAY), calendar.get(Calendar.MINUTE));
                        Database.getHistoric().add(new Historic(logged, media, calendar.getTime()));

                    %>
                    <h1>Resultado do teste: <%=media%></h1>
             <%}%>
                                        
        </div>
        <div class="container">
            <!--Questão-->
            <div class="row">
                <div class="quiz">
                    <form>
                    <% for (Question q: Database.getQuestions()) {%>
                    <h2>Questão:</h2>
                    <h4><%= q.getQuestion()%></h4>
                    <hr/>
                    <% for (int i = 0; i<q.getAlternatives().length; i++){%>
                    <div class="form-group">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="<%=q.getQuestion()%>" value="<%=q.getAlternatives()[i] %>"><h6><%=q.getAlternatives()[i] %></h6>
                            </label>
                        </div>
                <%}%>                            
                <%}%>
                    </form>
            </div>
            <div class="row">
                 <input type = "submit" class="btn btn-quiz" name="finalizar">

            </div>
        </div>

    </body>
</html>
