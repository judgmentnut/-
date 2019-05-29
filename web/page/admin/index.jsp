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
    <body>

      
                <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                            
                    
               
                    <a  href="showChangeRole">Изменить роль</a><br><br>
             
             
                    <a href="showRegistration">Добавить покупателя</a><br><br>
              
               
                    <a href="showAddNewProduct">Добавить пиццу</a><br><br>
              
               
                    <a  href="showListBuyers">Список покупателей</a><br><br>
              
              
                    <a  href="showListProducts">Меню</a><br><br>
            
                <!--<a href="showPageForGiveProduct"><button class="btn btn-danger">Заказ пиццы</button></a><br><br>-->
                </nav>
               <br>
              
               <a class="btn btn-outline-success my-2 my-sm-0" href="logout">Выйти</a><br><br>
            
            
                    <a class="btn btn-outline-success my-2 my-sm-0"  href="showChangePassword">Изменить пароль</a><br>
              
                <br>
              
         
                <div class="alert alert-info">
                ${info}
                </div>
      

            


    </body>
</html>