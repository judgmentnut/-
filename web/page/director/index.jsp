<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Директор</title>
    </head>
    <body><div class="col-md-12">
        <div style="font-family: cursive;">
        <H1>Добро пожаловать в нашу пиццерию</H1>
        <div style=" color:  #3F92D2; font-family: cursive;">
            <h3>${info}<br><hr></h3>
        </div>
        <div style=" font-family: cursive;">
        <a href="logout"><button class="btn btn-warning">Выйти</button></a><br><br>
        <a href="showChangePassword"><button class="btn btn-warning">Изменить пароль</button></a><br>
        <br><hr>
  
       
        <a href="showRegistration">Добавить покупателя</a><br>
        <a href="showAddNewProduct">Добавить пиццу</a><br>
        <a href="showListBuyers">Список покупателей</a><br>
        <a href="showListProducts">Меню</a><br>
        <a href="showPageForGiveProduct">Заказ пиццы</a><br>
        </div>
        </div>
        </div>
    </body>
</html>