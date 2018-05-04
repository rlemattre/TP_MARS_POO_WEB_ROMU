<%-- 
    Document   : sapin
    Created on : 28 mars 2018, 09:39:16
    Author     : romua
--%>

<%@include file="Entete.jsp"%>

        <h1> Dessinons des sapins </h1>
        
        <h2> On aime dessiner des sapins : </h2>
        
        <form action="CreationSapin" method="POST">
              
            <label> Saisir une hauteur de sapin : </label>
            <input type="text" name="hauteur">
            <br />
            <br />
            <label> Choisir un type de sapin : </label>
            <select name="type">
                <option value="1">plein</option>
                <option value="2">vide</option>
                <option value="3">couché</option>
            </select>
            <br />
            <br />
            <input type="submit" value="afficher le résultat !"></td>
            <br />
                       
        </form>
            
        <%@include file="Pied.jsp" %>