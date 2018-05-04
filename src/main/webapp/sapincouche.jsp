<%-- 
    Document   : sapincouche
    Created on : 6 avr. 2018, 16:32:52
    Author     : romua
--%>
<%@page language="java"%>
<%@include file="Entete.jsp"%>
        
        <h1> Le sapin couché </h1>
        
        <%
            int numeroLigne;
            int nbEspaces;
            int nbEtoiles;
            int hauteur=0;
            int h = 0;
            
            if (session.getAttribute("hauteur") != null) {
                
                h = (int) session.getAttribute("hauteur");
            }
            
            for (numeroLigne = 1; numeroLigne <= h; numeroLigne++) {
            
            for (nbEtoiles = 1 ; nbEtoiles <= numeroLigne ; nbEtoiles++) {
                out.print("*");
                }
                out.print("<br />");
            }
            for (numeroLigne = 1 ; numeroLigne <= h; numeroLigne++) {
            
                for (nbEtoiles = h - 1; nbEtoiles >= numeroLigne; nbEtoiles--) {
                    out.print("*");
                    }
                out.print("<br />");
                }
        %>
        
<%@include file="Pied.jsp" %> 
