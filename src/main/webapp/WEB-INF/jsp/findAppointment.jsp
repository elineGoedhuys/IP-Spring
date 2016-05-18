<%-- 
    Document   : findAppointment
    Created on : 3-mei-2016, 15:04:46
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Find Appointment</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1>Find Patients appointment</h1>
        <div id ="container">
             
            <%--<form:form modelAttribute="appointment" method="POST" action= "${pageContext.request.contextPath}/findAppointment.htm">
                <table>
                <tr>
                    <td> <form:label path="patientId">PatientId: </form:label></td>
                    <td>  <form:input path="patientId" value="${appointment.patientId}"></form:input></td>
                </tr>
                <tr><td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td></tr>
                </table>
            </form:form>--%>
         
            
            <table id="overview" class="table">
                <th>AppointmentId</th>
                <th>PatientId</th>
                <th>DoctorId</th>
                <th>Date</th>
                <th>Hour</th>
                <th>Place</th>
                    <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td><c:url value= '${appointment.id}' /></td>
                        <td><c:url value= '${appointment.patient.id}' /></td>
                        <td><c:url value= '${appointment.doctor.id}' /></td>
                        <td><c:url value= '${appointment.date}' /></td>
                        <td><c:url value= '${appointment.uur}' /></td>
                        <td><c:url value= '${appointment.place}' /></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
             <%@include file="footer.jsp"%>
    </body>
</html>
