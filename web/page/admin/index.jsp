<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Админ</title>
    </head>
    <body><div class="col-md-12">
        <div style=" font-family: fantasy;">
            <strong><H1>Добро пожаловать в нашу пиццерию!</H1></strong>
        </div>
        <div style=" color:  orange; font-family: fantasy;">
            <h3>${info}</h3><br>
    </div>
    
    <div style=" font-family: fantasy;">
        <a href="logout"><button class="btn btn-danger">Выйти</button></a><br><br>
        <a href="showChangePassword"><button class="btn btn-danger">Изменить пароль</button></a><br>
        <br><hr>
        <a href="showChangeRole"><button class="btn btn-danger">Изменить роль</button></a><br><br>
       
        <a href="showRegistration"><button class="btn btn-danger">Добавить покупателя</button></a><br><br>
        <a href="showAddNewProduct"><button class="btn btn-danger">Добавить пиццу</button></a><br><br>
        <a href="showListBuyers"><button class="btn btn-danger">Список покупателей</button></a><br><br>
        <a href="showActiveOrders"><button class="btn btn-danger">Список активных заказов</button></a><br><br>
        <a href="showListProducts"><button class="btn btn-danger">Меню</button></a><br><br>
        <!--<a href="showPageForGiveProduct"><button class="btn btn-danger">Заказ пиццы</button></a><br><br>-->
    </div>
        </div>

    </body>
</html>