<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Изменение пароля</title>
    </head>
    <body><div class="col-md-8 offset-md-1" >
        <div style=" ">
        <h1>Изменить пароль</h1>
        </div>
            <div style="text-align: center; ">
        <form action="changePassword" method="POST">
        <br>
        Введите действующий пароль:
        <input type="password" class="form-control" name="oldPassword">
        <br>
         Введите  новый пароль:
        <input type="password" class="form-control" name="newPassword1">
        <br>
         Повторите пароль:
        <input type="password" class="form-control" name="newPassword2">
        <br><br>
        <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Изменить пароль"><br>
        </form>
                <br><a href="index"><button class="btn btn-outline-success my-2 my-sm-0">Главная страница</button></a><br>
        </div>
        </div>
    </body>
</html>