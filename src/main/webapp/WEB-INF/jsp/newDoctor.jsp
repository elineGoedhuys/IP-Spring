<%-- 
    Document   : newDoctor
    Created on : 31-mrt-2016, 13:47:40
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <%@ taglib prefix="form"
             uri="http://www.springframework.org/tags/form" %>
        <title>Add new Doctor</title>
    </head>
    <body>
         <%@include file="header.jsp"%>
        <h1>Add new doctor</h1>
          <div id="container">
              <form:form modelAttribute="doctor" method="POST" action= "${pageContext.request.contextPath}/doctors.htm" >
                <table>
                    <tr>
                        <td><form:label path="firstName">Firstname</form:label></td>
                        <td><form:input path="firstName" value="${doctor.firstName}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="lastName">Lastname</form:label></td>
                        <td><form:input path="lastName" value="${doctor.lastName}"/></td>
                    </tr>
                     <tr>
                        <td><form:label path="passportId">Passport ID</form:label></td>
                        <td><form:input path="passportId" value="${doctor.passportId}"/></td>
                    </tr>
                     <tr>
                        <td><form:label path="age">Age</form:label></td>
                        <td><form:input path="age" value="${doctor.age}"/></td>
                    </tr>
                     <tr>
                        <td><form:label path="address.street">Street</form:label></td>
                        <td><form:input path="address.street" value="${doctor.address.street}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.houseNumber">House number</form:label></td>
                        <td><form:input path="address.houseNumber" value="${doctor.address.houseNumber}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.zipCode">Zip Code</form:label></td>
                        <td><form:input path="address.zipCode"value="${doctor.address.zipCode}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.town">Town</form:label></td>
                        <td><form:input path="address.town"value="${doctor.address.town}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.region">Region</form:label></td>
                        <td><form:input path="address.region" value="${doctor.address.region}"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address.country">Country</form:label></td>
                        <td><form:input path="address.country" value="${doctor.address.country}"/></td>
                    </tr>
                    <%--<tr>
                        <td><form:label path="doctorId">Doctor ID</form:label></td>
                        <td><form:input path="doctorId" value="${doctor.doctorId}"/></td>
                    </tr>--%>
                    <tr>
                    <td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td>
                </table>
                
            </form:form>
            
            <%--  <form id="categoryForm" method="POST" role="form" action="<c:url value="/doctors.htm"/>">
                
                <%--<p class="form-group">
                    <label class="control-label" for="firstName">Firstname</label>
                    <input id = "firstName" name ="firstName"  value="${patient.firstName}" />
                </p> --%>
                  <%--<p class="form-group">
                    <label class="control-label" for="lastName">lastname</label>
                    <input id = "lastName" name ="lastName"  value="${doctor.lastName}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="passportId">PassportId</label>
                    <input id = "passportId" name ="passportId"  value="${doctor.passportId}" />
                </p> 
                
                 <p class="form-group">
                    <label class="control-label" for="age">Age</label>
                    <input id = "age" name ="age"  value="${doctor.age}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.street">Street</label>
                    <input id = "adress.street" name ="adress.street"  value="${doctor.adress.street}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.houseNumber">House number</label>
                    <input id = "adress.houseNumber" name ="adress.houseNumber"  value="${doctor.adress.houseNumber}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.town">Town</label>
                    <input id = "adress.town" name ="adress.town"  value="${doctor.adress.town}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.zipCode">Zip code</label>
                    <input id = "adress.zipCode" name ="adress.zipCode"  value="${doctor.adress.zipCode}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.region">Region</label>
                    <input id = "adress.region" name ="adress.region"  value="${doctor.adress.region}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="adress.country">Country</label>
                    <input id = "adress.country" name ="adress.country"  value="${doctor.adress.country}" />
                </p> 
                
                  <p class="form-group">
                    <label class="control-label" for="doctorId">DoctorId</label>
                    <input id = "doctorId" name ="doctorId"  value="${doctor.doctorId}" />
                </p> 
                
                <p>
                <label for="save">&nbsp;</label>
                <input id="save" type="submit" value='Save'>
                </p>
                
            </form>--%>
            
        </div>
    </body>
</html>
