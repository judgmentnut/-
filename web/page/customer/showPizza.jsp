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
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Просмотр</h1>
        <p>${info}</p>
        <a href="index">На главную</a><br>
        Изображение: <br>
        <img src="insertFile/${cover.path}"><br>
        Название: ${product.name}<br>
        Доступно: ${product.quantity}<br>
      
    </body>
</html>
