
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  
        <link rel="stylesheet" href="public/css/bootstrap.min.css">  
        <link href="public/css/font-awesome.min.css" rel="stylesheet">		
        <link rel="stylesheet" href="public/css/templatemo-style.css">  
   
    </head>

    <body style="background: #F8FDE3;">

        <div class="col-md-12">
            <H3>Добро пожаловать в нашу пиццерию </H3><br>


            <div class="alert alert-success">
            ${info}
            </div>


            <a class="btn btn-success my-2 my-sm-0" href="showLogin">Войти</a><br><br>
            <a class="btn btn-success my-2 my-sm-0" href="showRegistration">Зарегистрироваться</a>



        </div>

    </body>
</html>
