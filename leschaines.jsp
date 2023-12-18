<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les chaines</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les chaines de caractères</h1>
    <form action="#" method="post">
        <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" name="chaine">
        <p><input type="submit" value="Afficher">
    </form>

    <% 
        String chaine = request.getParameter("chaine");
        if (chaine != null && chaine.length() >= 6) {
            int longueurChaine = chaine.length();
            out.println("<p>La longueur de votre chaîne est de " + longueurChaine + " caractères</p>");

            char caractereExtrait = chaine.charAt(2);
            out.println("<p>Le 3° caractère de votre chaine est la lettre " + caractereExtrait + "</p>");

            String sousChaine = chaine.substring(2, 6);
            out.println("<p>Une sous chaine de votre texte : " + sousChaine + "</p>");

            int position = chaine.indexOf('e');
            out.println("<p>Votre premier 'e' est en : " + position + "</p>");

            // Exercice 1 : Compter le nombre de 'e'
            int nombreDeE = 0;
            for (int i = 0; i < chaine.length(); i++) {
                if (chaine.charAt(i) == 'e') {
                    nombreDeE++;
                }
            }
            out.println("<h2>Exercice 1 : Combien de 'e' dans notre chaîne de caractères ?</h2>");
            out.println("<p>Le nombre de lettre 'e' dans votre chaîne est : " + nombreDeE + "</p>");
        } else if (chaine != null) {
            out.println("<p>Veuillez saisir une chaîne de 6 caractères minimum.</p>");
        }
    %>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>
<%-- Exercice 2 : Affichage vertical de la chaîne --%>
<% if (chaine != null) { 
    out.println("<h2>Exercice 2 : Affichage vertical</h2>");
    for (int i = 0; i < chaine.length(); i++) {
        out.println("<p>" + chaine.charAt(i) + "</p>");
    }
} %>


<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>
<% 
    String chaine = request.getParameter("chaine");
    if (chaine != null && chaine.length() >= 6) {
        int longueurChaine = chaine.length();
        out.println("<p>La longueur de votre chaîne est de " + longueurChaine + " caractères</p>");

        out.println("<h2>Exercice 3 : Retour à la ligne</h2>");
        for (int i = 0; i < chaine.length(); i++) {
            char caractere = chaine.charAt(i);
            if (caractere == ' ') {
                out.print("<br/>");
            } else {
                out.print(caractere);
            }
        }
    } else if (chaine != null) {
        out.println("<p>Veuillez saisir une chaîne de 6 caractères minimum.</p>");
    }
%>


<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
