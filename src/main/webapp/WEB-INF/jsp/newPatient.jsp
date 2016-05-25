<%-- 
    Document   : newPatient
    Created on : 31-mrt-2016, 11:49:02
    Author     : Eline
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="lbl.addPatient" /></title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1><spring:message code="lbl.addPatient" /></h1>
        <div id="container">
          <form:form modelAttribute="patient" method="POST" action= "${pageContext.request.contextPath}/patients.htm" >
                <table>
                    <tr>
                        <td><form:label path="firstName"><spring:message code="lbl.firstName" />*</form:label></td>
                        <td><form:input path="firstName" value="${patient.firstName}"/></td>
                        <td><form:errors path="firstName" /></td>
                    </tr>
                    
                    <tr>
                        <td><form:label path="lastName"><spring:message code="lbl.lastName" />*</form:label></td>
                        <td><form:input path="lastName" value="${patient.lastName}"/></td>
                        <td><form:errors path="lastName" /></td>
                    </tr>
                     <tr>
                        <td><form:label path="passportId"><spring:message code="lbl.passportId" />*</form:label></td>
                        <td><form:input path="passportId" value="${patient.passportId}"/></td>
                        <td><form:errors path="passportId" /></td>
                    </tr>
                     <tr>
                        <td><form:label path="age"><spring:message code="lbl.age" />*</form:label></td>
                        <td><form:input path="age" value="${patient.age}"/></td>
                        <td><form:errors path="age" /></td>
                    </tr>
                     <tr>
                        <td><form:label path="address.street"><spring:message code="lbl.street" />*</form:label></td>
                        <td><form:input path="address.street" value="${patient.address.street}"/></td>
                        <td><form:errors path="address.street" /></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.houseNumber"><spring:message code="lbl.houseNumber" />*</form:label></td>
                        <td><form:input path="address.houseNumber" value="${patient.address.houseNumber}"/></td>
                        <td><form:errors path="address.houseNumber" /></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.zipCode"><spring:message code="lbl.zipCode" />*</form:label></td>
                        <td><form:input path="address.zipCode"value="${patient.address.zipCode}"/></td>
                        <td><form:errors path="address.zipCode" /></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.town"><spring:message code="lbl.town" />*</form:label></td>
                        <td><form:input path="address.town"value="${patient.address.town}"/></td>
                        <td><form:errors path="address.town" /></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.region"><spring:message code="lbl.region" />*</form:label></td>
                        <td><form:input path="address.region" value="${patient.address.region}"/></td>
                        <td><form:errors path="address.region" /></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.country"><spring:message code="lbl.country" />*</form:label></td>
                        <td><form:input path="address.country" value="${patient.address.country}"/></td>
                        <td><form:errors path="address.country" /></td>
                    </tr>
                   <tr>
                        
                        <td><form:input type="hidden" path="id" value="${patient.id}"/></td>
                    </tr>
                    <tr>
                    <td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td>
                </table>
                
            </form:form>
            
         
        </div>
                 <%@include file="footer.jsp"%>
    </body>
</html>
