<%-- 
    Document   : uploadFile
    Created on : Mar 5, 2019, 12:48:27 PM
    Author     : Melnikov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Загрузка файла</title>
    </head>
    <body><div class="col-md-12">
        <div style=" font-family: cursive;">
        <h1>Загрузка файла!</h1>
        <p>${info}</p>
        <form action="uploadFile" method="POST" enctype="multipart/form-data">
            <input type="text" name="description"><br><hr>
            <input type="file" class="btn btn-warning" name="file"><br><br>
            <input type="submit" class="btn btn-warning" value="Загрузить">
            </div>
        </div>
        </form>
        
    </body>
</html>
