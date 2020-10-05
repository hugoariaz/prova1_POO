<!DOCTYPE html>
<%@page import="Materia.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/menu.jspf"%>
<%@page import ="java.util.ArrayList"%>>

<% ArrayList<Disciplina> disciplina = (ArrayList) application.getAttribute ("Disciplinas"); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>
        <div align = "center">
        <h1>Disciplinas Cursadas Atualmente</h1>
        <div class="container">
            
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Ementa</th>
                        <th>Ciclo</th>
                        <th>Nota</th>
                    </tr>  
        </thead>
    </body>
</html>
