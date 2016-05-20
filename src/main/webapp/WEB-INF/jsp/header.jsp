<%-- 
    Document   : header
    Created on : 18-mrt-2016, 19:06:33
    Author     : Eline
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
		</script>

    </head>
    <body>
        <img src="${pageContext.request.contextPath}/images/NYcity1.png" alt="NYcity">
       	<nav class="clearfix">
    <ul class="clearfix">  
        <li><a href="<c:url value="/index.htm" />"><spring:message code="lbl.home" /> </a></li>
        <li><a href="<c:url value="/patients.htm" />"><spring:message code="lbl.patients" /> </a></li>
        <li><a href="<c:url value="/doctors.htm" />"><spring:message code="lbl.doctors" /> </a></li>
        <li><a href="<c:url value="/makeAppointment.htm" />"><spring:message code="lbl.makeAppointment" /> </a></li>
        <li><a href="<c:url value="/findAppointment.htm" />"><spring:message code="lbl.findAppointment" /> </a></li>
    </ul>
</nav>
    </body>
</html>
