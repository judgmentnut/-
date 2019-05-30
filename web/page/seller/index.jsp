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
        <title>Продавец</title>
    </head>
    <body>
        
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
        
            
        <a href="showListBuyers">Список покупателей</a><br><br>
        <a href="showListProducts">Меню</a><br><br>
        <a href="showPageForGiveProduct">Заказ пиццы</a><br><br>
        </nav>
        
        <br>
        <a href="logout"><button class="btn btn-outline-success my-2 my-sm-0">Выйти</button></a><br><br>
        <a href="showChangePassword"><button class="btn btn-outline-success my-2 my-sm-0">Изменить пароль</button></a><br><br>
        <br><hr>
        
        
      <div class="alert alert-info">
            ${info}
        </div>
       
       
    </body>
</html>