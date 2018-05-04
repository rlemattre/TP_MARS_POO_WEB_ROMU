<%-- 
    Document   : sapinplein
    Created on : 6 avr. 2018, 16:24:42
    Author     : romua
--%>

<%@include file="Entete.jsp"%>
        
        <h1>Le sapin plein </h1>
        
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
            
            for (nbEspaces = h - numeroLigne ; nbEspaces > 0; nbEspaces--) {
         
                out.print("&nbsp&nbsp");
            }
                for (nbEtoiles = 0 ; nbEtoiles < 2 * numeroLigne - 1 ; nbEtoiles++) {
                out.print("*");
                }
                out.print("<br />");
            }
        %>
        
<%@include file="Pied.jsp" %>    

