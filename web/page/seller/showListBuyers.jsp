<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Магазин</title>
    </head>
    <body><div class="col-md-12">
        <div style=" font-family: cursive;">
        <h1>Список покупателей</h1>
        ${info}<br><br>
        <a href="index"><button class="btn btn-warning">Главная страница</button></a><br><hr>
        <ul>
            <c:forEach var="buyer" items="${listBuyers}">
                <li>${buyer.name}, ${buyer.surname}
            </c:forEach>
        </ul>
        </div>
        </div>
    </body>
</html>