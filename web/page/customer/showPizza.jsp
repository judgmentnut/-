<%-- 
    Document   : showPizza
    Created on : May 2, 2019, 12:16:02 PM
    Author     : pupil
--%>

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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-md-12 offset-md-4" >
         <h1>Просмотр</h1>
         <div class="alert alert-info">${info}</div>
        <a href="index" class="btn btn-success-outline">На главную</a><br>
        Изображение: <br>
        <img src="insertFile/${cover.path}"><br>
        Название: ${product.name}<br>
        Доступно: ${product.quantity}<br>
        </div>
    </body>
</html>
