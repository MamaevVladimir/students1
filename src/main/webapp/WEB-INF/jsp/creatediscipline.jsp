<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style7.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <a href="/logout">Logout</a>
    </span>
</div>

<span>
    <div class="link2">
    <a href="../../index.jsp">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
    </div>
</span>

<span>
    <strong
        class="modification">Для создания новой дисциплины заполните все поля и нажмите кнопку "Создать"
    </strong>
</span>

<form action="/creatediscipline" method="post">
<p><label for="nameDiscipline">Название дисциплины</label>
    <input type="text" id="nameDiscipline" name="secondName" placeholder="Введите дисциплину" required autofocus>
    <input value="Создать" type="submit" class="buttonModify"></p>
</form>

</body>
</html>
