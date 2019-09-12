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
        <a href="exit">Logout</a>
    </span>
</div>

<span>
    <div class="link2">
    <a href="../../main.jsp">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
    </div>
</span>

<span><strong
        class="modification">Для того чтобы создать новую дисциплину заполните все поля и нажмите кнопку "Создать"</strong></span>

<fieldset>
    <label for="nameDiscipline">Название дисциплины</label>
</fieldset>

<form action="/creatediscipline" method="post">
    <input type="text" id="nameDiscipline" name="secondName" placeholder="Введите дисциплину" required autofocus>
    <input value="Создать" type="submit" class="buttonModify">
</form>

</body>
</html>
