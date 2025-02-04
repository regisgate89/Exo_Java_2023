<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les boucles</h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoiles pour le carré : </label>
        <input type="number" id="inputValeur" name="valeur" required>
        <input type="submit" value="Afficher">
    </form>

    <% 
    String valeur = request.getParameter("valeur");
    if (valeur != null && !valeur.isEmpty()) {
        try {
            int tailleCarre = Integer.parseInt(valeur);
            out.println("<h2>Exercice 1 : Le carré d'étoiles</h2>");
            for (int i = 0; i < tailleCarre; i++) {
                for (int j = 0; j < tailleCarre; j++) {
                    out.print("*");
                }
                out.println("<br/>");
            }
        } catch (NumberFormatException e) {
            out.println("<p>Erreur : Veuillez entrer un nombre valide pour le carré d'étoiles.</p>");
        }
    }
    %>


<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>
<% 
    // Exercice 2 : Triangle rectangle gauche
    out.println("<h2>Exercice 2 : Triangle rectangle gauche</h2>");
    try {
        int hauteurTriangle = Integer.parseInt(valeur);
        for (int ligne = 1; ligne <= hauteurTriangle; ligne++) {
            for (int etoile = 1; etoile <= ligne; etoile++) {
                out.print("*");
            }
            out.println("<br/>");
        }
    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez entrer un nombre valide pour le triangle.</p>");
    }
%>


<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>
<% 
    // Exercice 3 : Triangle rectangle inversé
    out.println("<h2>Exercice 3 : Triangle rectangle inversé</h2>");
    try {
        int hauteurTriangle = Integer.parseInt(valeur);
        for (int ligne = hauteurTriangle; ligne > 0; ligne--) {
            for (int etoile = 1; etoile <= ligne; etoile++) {
                out.print("*");
            }
            out.println("<br/>");
        }
    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez entrer un nombre valide pour le triangle.</p>");
    }
%>


<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

<% 
    // Exercice 4 : Triangle rectangle aligné sur la droite
    out.println("<h2>Exercice 4 : Triangle rectangle aligné sur la droite</h2>");
    try {
        int hauteurTriangle = Integer.parseInt(valeur);
        for (int ligne = 1; ligne <= hauteurTriangle; ligne++) {
            for (int espace = hauteurTriangle - ligne; espace > 0; espace--) {
                out.print("&nbsp;");
            }
            for (int etoile = 1; etoile <= ligne; etoile++) {
                out.print("*");
            }
            out.println("<br/>");
        }
    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez entrer un nombre valide pour le triangle.</p>");
    }
%>


<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>
<% 
    // Exercice 5 : Triangle isocèle
    out.println("<h2>Exercice 5 : Triangle isocèle</h2>");
    try {
        int hauteurTriangle = Integer.parseInt(valeur);
        for (int ligne = 1; ligne <= hauteurTriangle; ligne++) {
            for (int espace = hauteurTriangle - ligne; espace > 0; espace--) {
                out.print("&nbsp;");
            }
            for (int etoile = 1; etoile <= ligne; etoile++) {
                out.print("*");
            }
            out.println("<br/>");
        }
    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez entrer un nombre valide pour le triangle.</p>");
    }
%>


<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<% 
    // Exercice 6 : Demi-losange
    out.println("<h2>Exercice 6 : Demi-losange</h2>");
    try {
        int hauteurLosange = Integer.parseInt(valeur);

        // Partie supérieure du losange (triangle isocèle)
        for (int ligne = 1; ligne <= hauteurLosange; ligne++) {
            for (int espace = hauteurLosange - ligne; espace > 0; espace--) {
                out.print("&nbsp;&nbsp;");
            }
            for (int etoile = 1; etoile <= ligne; etoile++) {
                out.print("*");
            }
            out.println("<br/>");
        }

        // Partie inférieure du losange (triangle inversé)
        for (int ligne = hauteurLosange; ligne > 0; ligne--) {
            for (int espace = hauteurLosange - ligne; espace > 0; espace--) {
                out.print("&nbsp;&nbsp;");
            }
            for (int etoile = 1; etoile <= ligne; etoile++) {
                out.print("*");
            }
            out.println("<br/>");
        }
    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez entrer un nombre valide pour le demi-losange.</p>");
    }
%>


<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>
<% 
    // Exercice 7 : Table de multiplication
    out.println("<h2>Exercice 7 : Table de multiplication</h2>");
    try {
        int valeurMultiplication = Integer.parseInt(valeur);
        out.println("<p>Table de multiplication pour le nombre " + valeurMultiplication + " :</p>");
        for (int i = 1; i <= valeurMultiplication; i++) {
            out.println("<p>" + valeurMultiplication + " x " + i + " = " + (valeurMultiplication * i) + "</p>");
        }
    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez entrer un nombre valide pour la table de multiplication.</p>");
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
