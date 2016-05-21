<%-- 
    Document   : MakeAgenda
    Created on : 21-mei-2016, 17:12:06
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
        <script type="text/javascript" src="jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="wickedpicker.js"></script>
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script type="text/javascript" src="js/bootstrap-2.2.2.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
         <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <title>Make Agenda</title>
    </head>
    <body>
        <script>
         $(function() {
            $( "#datepicker-13" ).datepicker();
            //$( "#datepicker-13" ).datepicker("show");
         });
      </script>

 
    
         <%@include file="header.jsp"%>
         <h1>Make your agenda</h1>
        <form:form modelAttribute="appointment" method="POST" action="${pageContext.request.contextPath}/makeAgenda.htm">
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
                    <td><form:label path="date"><spring:message code="lbl.date"/></form:label></td>
                    <td><form:input id="datepicker-13" path="date" value="${appointment.date}"/></td>
                    <td><form:errors path="date"/></td>
                </tr>
              
                 <tr>
                    <td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td>
                 </tr>
            </table>
        </form:form>
        
    </body>
</html>
