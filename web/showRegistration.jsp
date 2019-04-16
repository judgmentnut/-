
       <div class="col-md-12">
        <div style="font-family: fantasy;">
            <h1>Добро пожаловать в наш магазин</h1>
            <h3>Зарегистрируйтесь чтобы продолжить</h3>
        ${info}<br>
        <a href="index"><button class="btn btn-danger">Главная страница</button></a><br>
        <br>
        
        <form action="registration" method="POST">
            Имя:<br>
            <input type="text" name="name"><br>
            Фамилия:<br>
            <input type="text" name="surname"><br>
            Email:<br>
            <input type="text" name="email"><br>
            <br>
            Логин:<br>
            <input type="text" name="login"><br>
            <br>
            Пароль:<br>
            <input type="text" name="password1"><br>
            <br>
            Повторите пароль:<br>
            <input type="text" name="password2"><br>
            <br>
            <input type="submit" class="btn btn-danger" value="Зарегистрироваться">
            </div>
            </div>
        </form>
        </div>
    