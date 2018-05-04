<%-- 
    Document   : sapinvide
    Created on : 6 avr. 2018, 16:33:55
    Author     : romua
--%>

<%@include file="Entete.jsp"%>
        
        <h1> Le sapin vide </h1>
        
        <%
        
        int numeroLigne;
        int nbEspaces;
        int nbEtoiles;
        int hauteur=0;
        int h = 0;
            
        if (session.getAttribute("hauteur") != null) {
                
            h = (int) session.getAttribute("hauteur");
            }
            
        for (numeroLigne = 1; numeroLigne <= h - 1; numeroLigne++) { 
            
            if (numeroLigne == 1) {
                for (nbEspaces = h - numeroLigne; nbEspaces > 0; nbEspaces--) { 
                out.print("&nbsp&nbsp");
                }
                out.print("*");
                out.print("<br>");
            }
            else {
                for (nbEspaces = h - numeroLigne;nbEspaces > 0; nbEspaces--) { 
                out.print("&nbsp&nbsp");
                }
                out.print("*");
                for (nbEspaces = 1; nbEspaces < 2 * numeroLigne - 2; nbEspaces++) {
                    out.print("&nbsp&nbsp");
                }
                out.print("*");
                out.print("<br>");
            }
        }
            for (nbEtoiles=1; nbEtoiles <= 2 * h -1; nbEtoiles++) {
                out.print("*");
            }
        %>
        
<%@include file="Pied.jsp" %>