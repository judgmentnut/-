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
        <h1>Добавить продукт</h1>
        ${info}<br>
        <a href="index"><button class="btn btn-danger">Главная страница</button></a><br><br>
        <a href="showUploadFile"><button class="btn btn-danger">Загрузить изображение</button></a><br><hr>
        <form action="addNewProduct" method="POST">
            Название:<br>
            <input type="text" name="name"><br>
            Цена:<br>
            <input type="text" name="price"><br>
            Количество :<br>
            <input type="text" name="count"><br>
            <br>
            Фото:
            <select name="coverId">
                <c:forEach var="cover" items="${listCovers}">
                    <option value="${cover.id}">${cover.name}</option>
                </c:forEach>
            </select>
            <br><hr>
            <input type="submit" class="btn btn-danger" value="Добавить">
            </div>
        </div>
        </form>
    </body>
</html>