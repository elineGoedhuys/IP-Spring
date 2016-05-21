<%-- 
    Document   : makeAppointment
    Created on : 23-mrt-2016, 10:29:14
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
        <title>Make appointment</title>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
        <script type="text/javascript" src="jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="wickedpicker.js"></script>
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        
  
  <script>
         $(function() {
            $( "#datepicker-13" ).datepicker();
            //$( "#datepicker-13" ).datepicker("show");
         });
      </script>
  
 
        
    </head>
    <body>
         <%@include file="header.jsp"%>
         <h1><spring:message code="lbl.appointment"/></h1>
        <form:form modelAttribute="makeAppointment" method="POST" action="${pageContext.request.contextPath}/makeAppointment.htm">
            <table>
                
                <tr>
                   <td><form:label path="doctor"><spring:message code="lbl.doctorId"/></form:label></td>
                   <%-- <td><form:input path="doctorId" value="${appointment.doctorId}"/></td>--%>
               <td><form:select id="slcDoctor" path="doctor"> 
                           <form:option label="SELECT" value="${null}"/>
                   <form:options items="${doctors}" itemValue="id" itemLabel="lastName" />
                   </form:select></td>
               <td><form:errors path="doctor"/></td>
                </tr>
                <tr>
                   <td><form:label path="patient"><spring:message code="lbl.patientId"/></form:label></td>
                   <%-- <td><form:input path="patientId" value="${appointment.patientId}"/></td>--%>
                   <td><form:select id="slcPatient" path="patient.id"> 
                            <form:option label="SELECT" value="${null}"/>
                    <form:options items="${patients}" itemValue="id" itemLabel="lastName" />
                   </form:select></td>
                   <td><form:errors path="patient"/></td>
                   
                </tr>
                <tr>
                    <td><form:label path="date"><spring:message code="lbl.date"/></form:label></td>
                    <td><form:input id="datepicker-13" path="date" value="${appointment.date}"/></td>
                    <td><form:errors path="date"/></td>
                </tr>
                <tr>
                    <td><form:label path="uur"  ><spring:message code="lbl.hour"/></form:label></td>
                    <td><form:input path="uur" type="time" value="${appointment.uur}"/></td>
                    <td><form:errors path="uur"/></td>
                </tr>
                <tr>
                    <td><form:label path="place"><spring:message code="lbl.place"/></form:label></td>
                    <td><form:input  path="place" value="${appointment.place}"/></td>
                    <td><form:errors path="place"/></td>
                </tr>
                 <tr>
                    <td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td>
                 </tr>
            </table>
        </form:form>
         <%@include file="footer.jsp"%>
    </body>
            
</html>
