<%-- 
    Document   : doctors
    Created on : 23-mrt-2016, 10:29:00
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title><spring:message code="lbl.pageDoctors"/></title>
    </head>
    <body>
         <%@include file="header.jsp"%>
        <h1><spring:message code="lbl.pageDoctors"/></h1>
         <div id ="container">
            <table id="overview" class="table">
                <th><spring:message code="lbl.firstName" /> </th>
                <th><spring:message code="lbl.lastName" /> </th>
                <th><spring:message code="lbl.doctorId" /></th>
                <th><spring:message code="lbl.age" /></th>
                <th><spring:message code="lbl.street" /></th>
                <th><spring:message code="lbl.houseNumber"  /></th>
                <th><spring:message code="lbl.town" /></th>
                <th><spring:message code="lbl.zipCode"  /></th>
                <th><spring:message code="lbl.region"  /></th>
                <th><spring:message code="lbl.country" /></th>
                <th><spring:message code="lbl.passportId"/></th>
                
                <c:forEach var="doctor" items="${doctors}">
                <tr>
                 
                    <td><c:url value= '${doctor.firstName}' /></td>
                    <td><c:url value= '${doctor.lastName}' /></td>
                    <td><c:url value= '${doctor.id}' /></td>
                    <td><c:url value= '${doctor.age}' /></td>
                    <td><c:url value= '${doctor.address.street}' /></td>
                    <td><c:url value= '${doctor.address.houseNumber}' /></td>
                    <td><c:url value= '${doctor.address.town}' /></td>
                    <td><c:url value= '${doctor.address.zipCode}' /></td>
                    <td><c:url value= '${doctor.address.region}' /></td>
                    <td><c:url value= '${doctor.address.country}' /></td>
                    <td><c:url value= '${doctor.passportId}' /></td>
                    <td><a href="<c:url value="doctors/${doctor.id}.htm"/>"></a><img src="${pageContext.request.contextPath}/images/edit_button.png" class="edit" alt="Edit_Button"></td>
                    <td><a href="<c:url value="doctors/delete/${doctor.id}.htm"/>"></a><img src="${pageContext.request.contextPath}/images/cross.png" class="edit" alt="Edit_Button"></td>
                </tr>
                </c:forEach>
            </table>
             <br>
             <form:form class="add" method="GET" action="${pageContext.request.contextPath}/doctors/new.htm" >
                <input type="submit" value="Add new doctor" />
            </form:form>
            <%--<form method="GET" class="add" action="<c:url value="/doctors/new.htm" />">
                <input type="submit" value="New doctor" />
            </form>--%>
        </div>
         <%@include file="footer.jsp"%>
    </body>
</html>
