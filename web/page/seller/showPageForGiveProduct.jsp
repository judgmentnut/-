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
        <h1>Выдать товар покупателю</h1>
        ${info}<br><hr>
        <a href="index"><button class="btn btn-danger">Главная страница</button></a><br><hr>
        <form action="giveProduct" method="POST">
            <select name="productId">
                <c:forEach var="productItem" items="${listProducts}">
                    <option value="${productItem.id}">${productItem.name}</option>
                </c:forEach>
            </select>
            <select name="buyerId">
                <c:forEach var="buyerItem" items="${listBuyers}">
                    <option value="${buyerItem.id}">${buyerItem.name} ${buyerItem.surname}</option>
                </c:forEach>
            </select>
            <br>
           
       <br>
            <input type="submit" class="btn btn-danger" value="Продать">
            </div>
        </div>
        </form>
        
    </body>
</html>