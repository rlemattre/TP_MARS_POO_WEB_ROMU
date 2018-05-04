<%-- 
    Document   : Saisie2Moyenne
    Created on : 5 avr. 2018, 11:43:15
    Author     : romua
--%>

<%@page language="java"%>

<%@include file="Entete.jsp"%>
        
        <h1> Calculons une moyenne </h1>
        
        <h2> Formulaire dynamique de la saisie </h2><br>
        
        <%

            int inombreChiffre = 0;
            
            if (session.getAttribute("nombreChiffre") != null) {
                
               inombreChiffre = (int) session.getAttribute("nombreChiffre");
            }
        %>
        
        <form action="traitement2" method=POST">
            
            <% 
            
            for (int i = 0; i < inombreChiffre; i++) {
                
            %>
            
            <label>Saisie du nombre <%=i+1%> : </label>
            <input type="text" name="sval<%=i%>" required />
            
            <%
            }
            %>
            
            <input type="submit" value="Valider" />
            
                        
        </form>
            
<%@include file="Pied.jsp"%>
