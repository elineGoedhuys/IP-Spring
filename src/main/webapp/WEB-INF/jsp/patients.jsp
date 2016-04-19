<%-- 
    Document   : patients
    Created on : 23-mrt-2016, 10:26:56
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>Patients</title>
    </head>
    <body>
         <%@include file="header.jsp"%>
         <h1><spring:message code="lbl.page" text="Overview of our patients" /></h1>
        
            <table id="overview" class="table">
                <th><spring:message code="lbl.firstName" text="Firstname" /> </th>
                <th><spring:message code="lbl.lastName" text="Lastname" /> </th>
                <th><spring:message code="lbl.patientId" text="Patient ID" /></th>
                <th><spring:message code="lbl.age" text="Age" /></th>
                <th><spring:message code="lbl.street" text="Street" /></th>
                <th><spring:message code="lbl.houseNumber" text="House nubmer" /></th>
                <th><spring:message code="lbl.town" text="Town" /></th>
                <th><spring:message code="lbl.zipCode" text="Zip Code" /></th>
                <th><spring:message code="lbl.region" text="Region" /></th>
                <th><spring:message code="lbl.country" text="Country" /></th>
                <th><spring:message code="lbl.passportId" text="Passport ID" /></th>

                
                <c:forEach var="patient" items="${patients}">
                <tr>
                   
                    <td><c:url value= '${patient.firstName}' /></td>
                    <td><c:url value= '${patient.lastName}' /></td>
                    <td><c:url value= '${patient.patientId}' /></td>
                    <td><c:url value= '${patient.age}' /></td>
                    <td><c:url value= '${patient.address.street}' /></td>
                    <td><c:url value= '${patient.address.houseNumber}' /></td>
                    <td><c:url value= '${patient.address.town}' /></td>
                    <td><c:url value= '${patient.address.zipCode}' /></td>
                    <td><c:url value= '${patient.address.region}' /></td>
                    <td><c:url value= '${patient.address.country}' /></td>
                    <td><c:url value= '${patient.passportId}' /></td>
                    <td><a href="<c:url value="patients/${patient.patientId}.htm"/>"></a><img src="${pageContext.request.contextPath}/images/edit_button.png" class="edit" alt="Edit_Button"></td>
                    
                </tr>
                </c:forEach>
            </table>
            <br>
            <form:form class="add" method="GET" action="${pageContext.request.contextPath}/patients/new.htm" >
                <input type="submit" value="Add new patient" />
            </form:form>
        
    </body>
</html>
