<%-- 
    Document   : moyenne
    Created on : 4 avr. 2018, 16:30:59
    Author     : romua
--%>

<%@page import="java.util.ArrayList"%>
<%@page language="java"%>

<%@include file="Entete.jsp"%>
        
        <h1> Le nombre mystère </h1>
        
        <h2> Donner un nombre entier entre 1 et 100 </h2><br>
        
        <div>
            <% 
                int iChiffreAuHasard=0;
                
                if (session.getAttribute("chiffreAuHasard") != null) {
                    iChiffreAuHasard = (int) session.getAttribute("chiffreAuHasard");
                }
                
                %>
                <%=iChiffreAuHasard%>
        </div>
        
        <form action="nombreMystere2" method="POST">
              
                <label> Saisir votre choix : </label>
                <input type="text" name="choixJoueur" required/>
                
                <% 
                boolean resultat=false;
                
                if (session.getAttribute("resultat") != null) {
                    resultat = (boolean) session.getAttribute("resultat");
                }
                if (resultat == false)  {
                %>
                <input type="submit" value="Jouer"/>
                <%
                    }
                else {
                %>
                <a href="nombreMystere1"><button>Rejouer</button></a>
                <%
                }
                %>
                <br>
        </form>
        
        <div class="indication">
            <h2>Indication pour trouver la solution</h2>
            <%
            String iIndication="";

                if (session.getAttribute("indication") != null) {
                    iIndication = (String) session.getAttribute("indication");
                }
                %>
        
                <%=iIndication%>
                <br>
        </div>
                
        <div class="tableauScore">
            <h2>Tableau des scores</h2>
            <%
                int iCoups=1;
                
                if (session.getAttribute("iCoups") != null) {
                    iCoups = (int) session.getAttribute("iCoups");
                }
            %>
                Nombre de coups de la partie en cours : <%=iCoups%>.
            <br>
            <%
                int iTopCoups = 0;
            
                if (session.getAttribute("topCoups") != null)   {
                    iTopCoups = (Integer) session.getAttribute("topCoups");
                }
                %>
            Meilleur score : <%=iTopCoups%> coups.
            <br>    
        </div>
        
        <div id="random">
            <h2>Le plus grand nombre au hasard sorti durant cette partie :</h2>
            <%
                int iTopRandom=0;
                        
                    if (session.getAttribute("topRandom") != null)   {
                    iTopRandom = (int) session.getAttribute("topRandom");
                    }
            %>
            <%=iTopRandom%>
            <br>
        </div>
           
        
<%@include file="Pied.jsp"%>