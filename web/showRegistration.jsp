
       <div class="col-md-8 offset-md-1" >
        <div >
            <h1>Добро пожаловать в наш магазин</h1>
            <h3>Зарегистрируйтесь чтобы продолжить</h3>
            <div class="alert alert-info">
        ${info}<br>
            </div>
            
        <a href="index"><button class="btn btn-outline-success my-2 my-sm-0">Главная страница</button></a><br>
        <br>
        
        <form action="registration" method="POST">
            Имя:<br>
            <input type="text" class="form-control" name="name"><br>
            Фамилия:<br>
            <input type="text"  class="form-control" name="surname"><br>
            Email:<br>
            <input type="text" class="form-control" name="email"><br>
            <br>
            Логин:<br>
            <input type="text" class="form-control" name="login"><br>
            <br>
            Пароль:<br>
            <input type="text" class="form-control" name="password1"><br>
            <br>
            Повторите пароль:<br>
            <input type="text"  class="form-control" name="password2"><br>
            <br>
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Зарегистрироваться">
            </div>
            </div>
        </form>
        </div>
    