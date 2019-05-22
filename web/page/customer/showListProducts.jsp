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
        <title>Магазин</title>
    </head>
    <body><div class="col-md-12">
        <div>
        <h1>Список продуктов</h1>
        <div class="alert alert-info">
            ${info}</div>
        <a href="index"><button class="btn btn-outline-success my-2 my-sm-0">Главная страница</button></a><br><hr>
        <ul>
            <c:forEach var="product" items="${listProducts}">
                <li><a href="showPizza?productId=${product.id}">${product.name}, ${product.price}$, ${product.count} ct. </a>
            </c:forEach>
                 
        </ul>
        </div>
        </div>
    </body>
</html>