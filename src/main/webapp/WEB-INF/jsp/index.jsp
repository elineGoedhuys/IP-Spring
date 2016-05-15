<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <title>Home</title>
    </head>

    <body>
        <%@include file="header.jsp"%>
        <h1><spring:message code="lbl.welcome" /></h1>
         <%@include file="footer.jsp"%>
    </body>
</html>
