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
        <link rel="stylesheet" href="public/dist/css/lightbox.min.css">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  
        <link rel="stylesheet" href="public/css/bootstrap.min.css">  
        <link href="public/css/font-awesome.min.css" rel="stylesheet">		
        <link rel="stylesheet" href="public/css/templatemo-style.css">  
        <title>Пиццерия</title>
    </head>
    <body><div class="col-md-8 offset-md-1" >
        <div >
        <h1>Завершение заказа</h1>
        <div class="alert alert-info">
         ${info}
        </div>
        <a href="index"><button class="btn btn-outline-success my-2 my-sm-0">Главная страница</button></a><br>
        <form action="returnPizza" method="POST">
            <ul>
                <c:forEach var="historyItem" items="${listHistories}">
                    <li>${historyItem.id}. ${historyItem.buyer.name} ${historyItem.buyer.surname} заказал пиццу: ${historyItem.product.name}</li>
                </c:forEach>
            </ul>
            <br>
            Номер заказа:<br>
            <input type="text" name="returnHistoryId"><br><br>
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Подтвердить">
            </div>
        </div>
    
        </form>
    </body>
</html>