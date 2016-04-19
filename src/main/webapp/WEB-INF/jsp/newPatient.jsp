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
        <title>Add new patient</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1>Add new Patient</h1>
        <div id="container">
          <form:form modelAttribute="patient" method="POST" action= "${pageContext.request.contextPath}/patients.htm" >
                <table>
                    <tr>
                        <td><form:label path="firstName">Firstname</form:label></td>
                        <td><form:input path="firstName" value="${patient.firstName}"/></td>
                    </tr>
                    
                    <tr>
                        <td><form:label path="lastName">Lastname</form:label></td>
                        <td><form:input path="lastName" value="${patient.lastName}"/></td>
                    </tr>
                     <tr>
                        <td><form:label path="passportId">Passport ID</form:label></td>
                        <td><form:input path="passportId" value="${patient.passportId}"/></td>
                    </tr>
                     <tr>
                        <td><form:label path="age">Age</form:label></td>
                        <td><form:input path="age" value="${patient.age}"/></td>
                    </tr>
                     <tr>
                        <td><form:label path="address.street">Street</form:label></td>
                        <td><form:input path="address.street" value="${patient.address.street}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.houseNumber">House number</form:label></td>
                        <td><form:input path="address.houseNumber" value="${patient.address.houseNumber}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.zipCode">Zip Code</form:label></td>
                        <td><form:input path="address.zipCode"value="${patient.address.zipCode}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.town">Town</form:label></td>
                        <td><form:input path="address.town"value="${patient.address.town}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.region">Region</form:label></td>
                        <td><form:input path="address.region" value="${patient.address.region}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.country">Country</form:label></td>
                        <td><form:input path="address.country" value="${patient.address.country}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="patientId">Patient ID</form:label></td>
                        <td><form:input path="patientId" value="${patient.patientId}"/></td>
                    </tr>
                    <tr>
                    <td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td>
                </table>
                
            </form:form>
            
            
            
           <%-- <form id="categoryForm" method="POST" role="form" action="<c:url value="/patients.htm"/>"> 
               
                <%--<p class="form-group">
                    <label class="control-label" for="firstName">Firstname</label>
                    <input id = "firstName" name ="firstName"  value="${patient.firstName}" />
                </p> --%>
                <%--
                  <p class="form-group">
                    <label class="control-label" for="lastName">lastname</label>
                    <input  id = "lastName" name ="lastName"  value="${patient.lastName}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="passportId">PassportId</label>
                    <input id = "passportId" name ="passportId"  value="${patient.passportId}" />
                </p> 
                
                 <p class="form-group">
                    <label class="control-label" for="age">Age</label>
                    <input  id = "age" name ="age"  value="${patient.age}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.street">Street</label>
                    <input  id = "adress.street" name ="adress.street"  value="${patient.adress.street}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.houseNumber">House number</label>
                    <input  id = "adress.houseNumber" name ="adress.houseNumber"  value="${patient.adress.houseNumber}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.town">Town</label>
                    <input  id = "adress.town" name ="adress.town"  value="${patient.adress.town}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.zipCode">Zip code</label>
                    <input  id = "adress.zipCode" name ="adress.zipCode"  value="${patient.adress.zipCode}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.region">Region</label>
                    <input  id = "adress.region" name ="adress.region"  value="${patient.adress.region}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.country">Country</label>
                    <input  id = "adress.country" name ="adress.country"  value="${patient.adress.country}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="patientId">PatientId</label>
                    <input  id = "patientId" name ="patientId"  value="${patient.patientId}" />
                </p> 
                
                <p>
                <label for="save">&nbsp;</label>
                <input id="save" type="submit" value='Save'>
                </p>
              
            </form> --%>

            
        </div>
    </body>
</html>
