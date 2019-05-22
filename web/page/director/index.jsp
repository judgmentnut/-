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
        <title>Директор</title>
    </head>
    <body><div class="col-md-12">
        <div>
        <H1>Добро пожаловать в нашу пиццерию</H1>
        <div class="alert alert-info">
            ${info}
        </div>
        <div>
        <a href="logout"><button class="btn btn-outline-success my-2 my-sm-0">Выйти</button></a><br><br>
        <a href="showChangePassword"><button class="btn btn-outline-success my-2 my-sm-0">Изменить пароль</button></a><br>
        <br><hr>
  
       
        <a href="showRegistration"><button class="btn btn-outline-success my-2 my-sm-0">Добавить покупателя</button></a><br><br>
        <a href="showAddNewProduct"><button class="btn btn-outline-success my-2 my-sm-0">Добавить пиццу</button></a><br><br>
        <a href="showListBuyers"><button class="btn btn-outline-success my-2 my-sm-0">Список покупателей</button></a><br><br>
        <a href="showActiveOrders"><button class="btn btn-outline-success my-2 my-sm-0">Список активных заказов</button></a><br><br>
        <a href="showListProducts"><button class="btn btn-outline-success my-2 my-sm-0">Меню</button></a><br><br>
        <!--<a href="showPageForGiveProduct"><button class="btn btn-danger">Заказ пиццы</button></a><br><br>-->
        </div>
        </div>
        </div>
    </body>
</html>