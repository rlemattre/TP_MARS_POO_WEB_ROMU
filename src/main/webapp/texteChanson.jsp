<%-- 
    Document   : index
    Created on : 28 mars 2018, 09:31:47
    Author     : romua
--%>

<%@include file="Entete.jsp"%>

    <h1>Une chanson de scout :-)</h1>

    <%
    int i;
    int iNbStrophe=0;
                
    if (request.getParameter("nbStrophe") != null) {
    iNbStrophe = Integer.parseInt(request.getParameter("nbStrophe"));
   
    for (i=1; i <= iNbStrophe; i++) {
    if (i == 1) {
        out.print(i + " kilom�tre � pied, �a use, �a use,");
        out.print("<br />");
        out.print(i + " kilom�tre � pied, �a use les souliers.");
        out.print("<br />");
        out.print("<br />");
        }
        else {
        out.print(i + " kilom�tres � pied, �a use, �a use,");
        out.print("<br />");
        out.print(i + " kilom�tres � pied, �a use les souliers.");
        out.print("<br />");
        out.print("<br />");
        }
    }  
        %>
        
</div><%@include file="Pied.jsp" %>   