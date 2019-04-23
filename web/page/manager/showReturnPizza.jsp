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
    <body><div class="col-md-12">
        <div style="font-family: fantasy;">
        <h1>Завершение заказа</h1>
        <div style=" color:  orange; font-family: fantasy;">
            <h3>${info}<br><hr></h3>
        </div>
        <a href="index"><button class="btn btn-danger">Главная страница</button></a><br>
        <form action="returnPizza" method="POST">
            <ul>
                <c:forEach var="historyItem" items="${listHistories}">
                    <li>${historyItem.id}. ${historyItem.buyer.name} ${historyItem.buyer.surname} заказал пиццу: ${historyItem.product.name}</li>
                </c:forEach>
            </ul>
            <br>
            Номер заказа:<br>
            <input type="text" name="returnHistoryId"><br><br>
            <input type="submit" class="btn btn-danger" value="Подтвердить">
            </div>
        </div>
    
        </form>
    </body>
</html>