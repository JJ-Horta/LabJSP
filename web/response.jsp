<%-- 
    Document   : response
    Created on : 16/09/2021, 05:12:00 PM
    Author     : pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- Name --%>
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <h1>Hello, <jsp:getProperty name="mybean" property="name" />!</h1>
        
        <%-- Time  --%>
        <jsp:useBean id="clock" class="java.util.Date"/>
        <h1><c:choose>
                
                <c:when test = "${clock.hours <= 12 && clock.hours >= 6}">
                    Good morning.
                </c:when>
                <c:when test = "${clock.hours <= 18 && clock.hours > 12}">
                    Good evening.
                </c:when>
                <c:when test = "${clock.hours > 18 || clock.hours < 6}">
                    Good night.
                </c:when>
                
            </c:choose></h1>
                    
            <%-- Age --%>
            <jsp:useBean id="mybean2" scope="session" class="org.mypackage.hello.BirthdateHandler" />
            <jsp:setProperty name="mybean2" property="birthdate" />
            <h1>You are <jsp:getProperty name="mybean2" property="birthdate" /></h1>
    </body>
</html>
