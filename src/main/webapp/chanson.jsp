<%-- 
    Document   : chanson
    Created on : 28 mars 2018, 09:35:53
    Author     : romua
--%>

<%@include file="Entete.jsp"%>
        
        <h1> Chantons une chanson </h1>
        
        <h2> On aime chanter des chansons de scouts : </h2>
        
        <form action="CreationChanson" method="POST">
              
            <table>
                <tr> 
                    <td> Saisir un nombre de strophe(s) : </td>
                    <td><input type="text" name="nbStrophe"></td>
                <tr>
                    <td><input type="submit" value="afficher la chanson !"></td>
                </tr>
            </table>
            
        </form>
        
    <%@include file="Pied.jsp"%>
