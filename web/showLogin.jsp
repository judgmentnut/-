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

    <body>

        <div class="col-md-4 offset-md-4"  style="font-family: fantasy;">
            <h1 style="text-align: center">Войдите!</h1>
            <form action="login" method="POST">
                <div class="form-group">
                    <label for="exampleInputLogin">Логин</label>
                    <input type="login" class="form-control" id="exampleInputEmail1" aria-describedby="loginHelp" name="login" placeholder="Enter login">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Пароль</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                </div>
                <input type="submit" class="btn btn-success" value="Вход"><br>
                <br>
                <a class="nav-link" href="index">Главная страница</a><br>
            </form>
        </div>

    </body>
</html>