<%-- 
    Document   : resultat
    Created on : 5 avr. 2018, 14:44:31
    Author     : romua
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page language="java"%>

<%@include file="Entete.jsp"%>
        
        <h1> Calculons une moyenne </h1>
        
        <h2> Résultats </h2><br>
        
        <%
            
        double moyenne = 0;
        int compteur = 1;
                
        List<Double> listeDesValeurs = new ArrayList<Double>();
           
            if (session.getAttribute("resultat") != null && session.getAttribute("valeurs") != null) {
                
               moyenne = (double) session.getAttribute("resultat");
               listeDesValeurs = (List<Double>) session.getAttribute("valeurs");
            }
        %>
        
        <table>
           
            <% 
                for (Double od : listeDesValeurs) {
            %>
            
                <tr> Valeur n°<%=compteur++%> : <%=od%> </td><br/>
        
            <%
                }
            %>
            
            <br/>
            <tr> Moyenne : <%=moyenne%>  </tr>
            
        </table>
                    
<%@include file="Pied.jsp"%>
