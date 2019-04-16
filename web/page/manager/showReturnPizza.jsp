<%-- 
    Document   : showPageForReturnPizza
    Created on : Apr 16, 2019, 2:18:53 PM
    Author     : pupil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Пиццерия</title>
    </head>
    <body>
        <h1>Вернуть пиццу</h1>
        ${info}<br>
        <a href="index">Главная страница</a><br>
        <form action="returnPizza" method="POST">
            <ul>
                <c:forEach var="historyItem" items="${listHistories}">
                    <li>${historyItem.id}. ${historyItem.buyer.name} ${historyItem.buyer.surname} заказал пиццу ${historyItem.product.name}</li>
                </c:forEach>
            </ul>
            <br>
            Номер позиции возврата:<br>
            <input type="text" name="returnHistoryId">
            <input type="submit" value="Вернуть пиццу">
        </form>
    </body>
</html>