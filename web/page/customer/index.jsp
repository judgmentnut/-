<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Покупатель</title>
    </head>
    <body><div class="col-md-12">
        <div style=" font-family: fantasy;">
        <H1>Добро пожаловать в нашу пиццерию</H1>
        <div style=" color:  orange; font-family: cursive;">
            <h3>${info}<br><hr></h3>
        </div>
        <div style=" font-family: fantasy;">
        <a href="logout"><button class="btn btn-danger">Выйти</button></a><br><br>
        <a href="showChangePassword"><button class="btn btn-danger">Изменить пароль</button></a><br>
        <br><hr>
        
        <a href="showListProducts"><button class="btn btn-danger">Меню</button></a><br>
        </div>
        </div>
        </div>
        
    </body>
</html>