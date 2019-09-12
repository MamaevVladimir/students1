<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style3.css">
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

<span><strong class="modification">Для создания студента заполните все поля и нажмите кнопку "Создать"</strong></span>

<fieldset>
    <label for="surnameStudent">Фамилия</label>
    <label for="nameStudent">Имя</label>
    <label for="groupStudent">Группа</label>
    <label for="dateStudent">Дата поступления</label>
</fieldset>

<form action="/createstudent" method="post">
    <input type="text" id="surnameStudent" name="secondSurname" placeholder="Введите фамилию" required autofocus>
    <input type="text" id="nameStudent" name="secondNameStudent" placeholder="Введите имя" required autofocus>
    <input type="text" id="groupStudent" name="secondGroupStudent" placeholder="Введите группу" required autofocus>
    <input type="date" id="dateStudent" name="secondDateStudent" placeholder="Введите дату поступления" required autofocus>
    <input type="submit" value="Создать" class="buttonModify">
</form>

</body>
</html>
