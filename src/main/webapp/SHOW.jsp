<%-- 
    Document   : SHOW
    Created on : 23 dic. 2022, 22:27:53
    Author     : Braulio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${datos}" var="dato">
            ${dato.Sku} ${dato.Nombre} ${dato.Marca} ${dato.Color} ${dato.Precio}<br/>
        </c:forEach>
        <h1>Hello World!</h1>
    </body>
</html>
