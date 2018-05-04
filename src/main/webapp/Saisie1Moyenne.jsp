<%-- 
    Document   : moyenne
    Created on : 4 avr. 2018, 16:30:59
    Author     : romua
--%>

<%@page language="java"%>

<%@include file="Entete.jsp"%>
        
        <h1> Calculons une moyenne </h1>
        
        <h2> Veuillez saisir le nombre de chiffres </h2><br>
        
        <form action="traitement1" method="POST">
              
                <label> Nombre de chiffre : </label>
                <input type="text" name="nombreChiffre" required/>
                <input type="submit" value="Valider"/>

        </form>
            
<%@include file="Pied.jsp"%>