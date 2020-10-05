

<%@page import="Materia.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/menu.jspf"%>
<%@page import ="java.util.ArrayList"%>>
        
<%
    ArrayList<Disciplina> disciplinas = (ArrayList) application.getAttribute ("disciplinas");
    if (disciplinas == null) {
    disciplinas = new ArrayList ();
    disciplinas.add(new Disciplina ("IBD002", "", "4"));
    disciplinas.add(new Disciplina ("IES300", "", "4"));
    disciplinas.add(new Disciplina ("ILP007", "", "4"));
    disciplinas.add(new Disciplina ("EDS004", "", "4"));
    disciplinas.add(new Disciplina ("ILP512", "", "4"));
    disciplinas.add(new Disciplina ("ISO200", "", "4"));
    disciplinas.add(new Disciplina ("LIN400", "", "4"));
    disciplinas.add(new Disciplina ("TTG001", "", "4"));
    disciplinas.add(new Disciplina ("TTG003", "", "4"));
    application.setAttribute ("disciplinas", disciplinas);
    
    for (int j=0; j<disciplinas.size(); j++){
        disciplinas.get (j).setNota(Float.parseFloat("0.0"));
        }
    }
    
    if (request.getParameter("enviar")!=null){
    int t = Integer.parseInt(request.getParameter ("Indice"));
    
    disciplinas.get (t).setNota(Float.parseFloat(request.getParameter("nota")));
    }
    
    %>
    
    <%       
        Disciplina disciplina - new Disciplina ();
        ArrayList list = disciplina.getList(disciplinas);
        int quantidade_materia = list.size ();
        %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <div align ="center">
           <h1>Prova 1  - POO</h1> 
           <br/> <br/> <br/> <hr/>
           <h3>Hugo Leonardo Ariaz Amador</h3>
           <h3>RA: 1290481913049</h3>
           
           <%= quantidade_materia %>
        </div>
        
    </body>
</html>
