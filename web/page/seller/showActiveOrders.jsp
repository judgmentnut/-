<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Магазин</title>
    </head>
    <body><div class="col-md-12">
        <div style=" font-family: fantasy;">
        <h1>Список покупателей</h1>
        ${info}<br><br>
        <a href="index"><button class="btn btn-danger">Главная страница</button></a><br><hr>
        <ul>
            <c:forEach var="historyItem" items="${listHistories}">
                <li>${historyItem.id}. ${historyItem.buyer.name} ${historyItem.buyer.surname} заказал пиццу: ${historyItem.product.name}
            </c:forEach>
        </ul>
        </div>
        </div>
    </body>
</html>