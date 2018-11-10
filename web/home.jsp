<%-- 
    Document   : home
    Created on : 04/11/2018, 16:54:21
    Author     : usuario
--%>

<%@page import="br.com.fatecpg.quiz.Historic"%>
<%@page import="br.com.fatecpg.quiz.User"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="br.com.fatecpg.quiz.Historic"%>
<%@page import="br.com.fatecpg.quiz.Database"%>
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
            <h1>Seja Bem Vindo</h1>
        </div>
        <div class="container">
            <div class="row mt-2">

                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
                    <%@ include file="WEB-INF/JSPF/ultimosquiz.jspf" %>
                </div>

                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
                    <%@ include file="WEB-INF/JSPF/ranking.jspf" %>
                </div>
            </div>
        </div>
    </body>
</html>