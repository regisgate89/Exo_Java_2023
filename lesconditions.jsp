<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" name="valeurA"></p>
    <p>Saisir la valeur B : <input type="text" name="valeurB"></p>
    <p>Saisir la valeur C : <input type="text" name="valeurC"></p>
    <p><input type="submit" value="Afficher"></p>
</form>
<%-- Récupération des valeurs A, B et C --%>
<% String valeurA = request.getParameter("valeurA"); %>
<% String valeurB = request.getParameter("valeurB"); %>
<% String valeurC = request.getParameter("valeurC"); %>

<%-- Vérification et traitement pour l'Exercice 1 --%>
<% if (valeurA != null && valeurB != null && valeurC != null && !valeurA.isEmpty() && !valeurB.isEmpty() && !valeurC.isEmpty()) { %>
    <% 
        int intValeurA = Integer.parseInt(valeurA);
        int intValeurB = Integer.parseInt(valeurB);
        int intValeurC = Integer.parseInt(valeurC); 
        
        out.println("<h2>Exercice 1 : Comparaison 1</h2>");
        out.println("<p>A = " + intValeurA + "</p>");
        out.println("<p>B = " + intValeurB + "</p>");
        out.println("<p>C = " + intValeurC + "</p>");

        if (intValeurC > intValeurA && intValeurC < intValeurB) {
            out.println("<p>Oui, C  est compris entre A  et B .</p>");
        } else {
            out.println("<p>Non, C  n'est pas compris entre A  et B .</p>");
        }
 }
    %>

   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>
<%-- Récupération et traitement du nombre pour l'Exercice 2 --%>
<form action="#" method="post">
<p>Saisir le nombre : <input type="text" name="valeurNombre"></p>
    <p>Saisir un nombre pour vérifier s'il est pair ou impair : <input type="text" name="nombrePairImpair"></p>
    <p><input type="submit" value="Afficher"></p>
</form>
<% 
    String nombreStr = request.getParameter("nombrePairImpair");
    if (nombreStr != null && !nombreStr.isEmpty()) {
        int nombre = Integer.parseInt(nombreStr);
        out.println("<h2>Exercice 2 : Pair ou Impair ?</h2>");
        if (nombre % 2 == 0) {
            out.println("<p>Le nombre " + nombre + " est pair.</p>");
        } else {
            out.println("<p>Le nombre " + nombre + " est impair.</p>");
        }
    }
%>


<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
