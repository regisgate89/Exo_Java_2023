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
        if (intValeurC > intValeurA && intValeurC < intValeurB) {
            out.println("<p>Oui, C (" + intValeurC + ") est compris entre A (" + intValeurA + ") et B (" + intValeurB + ").</p>");
        } else {
            out.println("<p>Non, C (" + intValeurC + ") n'est pas compris entre A (" + intValeurA + ") et B (" + intValeurB + ").</p>");
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

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
