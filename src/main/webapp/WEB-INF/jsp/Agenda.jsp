<%-- 
    Document   : Agenda
    Created on : 21-mei-2016, 18:22:02
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda</title>
    </head>
    <body>
         <%@include file="header.jsp"%>
   
        <div id ="container">
             
         
            
            <table id="overview" class="table">
               
                <th><spring:message code="lbl.hour"/></th>
                <th><spring:message code="lbl.firstName"/></th>
                <th><spring:message code="lbl.lastName"/></th>
                <th><spring:message code="lbl.place"/></th>
                <th><spring:message code="lbl.appointmentId"/></th>
                <th><spring:message code="lbl.doctorId"/></th>
                <th><spring:message code="lbl.date"/></th>
                
                
                    <c:forEach var="agenda" items="${results}">
                        <h1>You're agenda for <c:url value='${agenda.date}'/></h1>
                    <tr>
                        <td><c:url value= '${agenda.uur}' /></td>
                        <td><c:url value= '${agenda.patient.firstName}' /></td>  
                        <td><c:url value= '${agenda.patient.lastName}' /></td> 
                        <td><c:url value= '${agenda.place}' /></td>
                        <td><c:url value= '${agenda.id}' /></td>
                        <td><c:url value= '${agenda.doctor.id}' /></td>
                        <td><c:url value= '${agenda.date}' /></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
             <%@include file="footer.jsp"%>
    </body>
</html>
