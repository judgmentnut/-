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
                <li class="nav-item ">               
                    <a class="nav-link" href="logout">Выйти</a><br><br>
                </li>
                <li class="nav-item ">
                    <a class="nav-link"  href="showChangePassword">Изменить пароль</a><br>
                </li>
                <br><hr>
                <li class="nav-item ">
                    <a class="nav-link" href="showChangeRole">Изменить роль</a><br><br>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="showRegistration">Добавить покупателя</a><br><br>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="showAddNewProduct">Добавить пиццу</a><br><br>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="showListBuyers">Список покупателей</a><br><br>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="showListProducts">Меню</a><br><br>
                </li>
                <!--<a href="showPageForGiveProduct"><button class="btn btn-danger">Заказ пиццы</button></a><br><br>-->
            </div>
        </div>

    </body>
</html>