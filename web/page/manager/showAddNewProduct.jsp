<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Магазин</title>
    </head>
    <body><div class="col-md-8 offset-md-1" >
        <div >
        <h1>Добавить продукт</h1>
        ${info}<br>
        <a href="index"><button class="btn btn-outline-success my-2 my-sm-0">Главная страница</button></a><br><br>
        <a href="showUploadFile"><button class="btn btn-outline-success my-2 my-sm-0">Загрузить изображение</button></a><br><hr>
        <form action="addNewProduct" method="POST">
            Название:<br>
            <input type="text" required name="name"><br>
            Цена:<br>
            <input type="text" required name="price"><br>
            Количество :<br>
            <input type="text" required name="count"><br>
            <br>
            Фото:
            <select required name="coverId">
                <c:forEach var="cover" items="${listCovers}">
                    <option value="${cover.id}">${cover.name}</option>
                </c:forEach>
            </select>
            <br><hr>
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Добавить">
            </div>
        </div>
        </form>
    </body>
</html>