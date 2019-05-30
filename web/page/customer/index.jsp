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
        <title>Покупатель</title>
    </head>
    <body>
        
        <H1>Добро пожаловать в нашу пиццерию</H1>
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
        <a href="logout">Выйти</a><br><br>
        <a href="showChangePassword">Изменить пароль</a><br><br>

            
        </nav>
        
        <div >
        
        <br>
        <a href="showListProducts"><button class="btn btn-outline-success my-2 my-sm-0">Меню</button></a><br>
        </div><br><div class="alert alert-info">
            ${info}
        </div><br>
       
        </div>
        
    </body>
</html>