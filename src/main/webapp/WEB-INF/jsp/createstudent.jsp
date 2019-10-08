<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style3.css">
    <link rel="stylesheet" href="../../resources/lib/jquery-ui-1.12.1/jquery-ui.css">
    <script src="../../resources/lib/jquery-ui-1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#dateStudent" ).datepicker();
        } );
    </script>
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
    <a href="/">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
    </div>
</span>

<span>
    <strong class="modification">Для создания студента заполните все поля и нажмите кнопку "Создать"</strong>
</span>

<form action="/createstudent" method="post">
<p><label for="surnameStudent">Фамилия</label>
    <input type="text" id="surnameStudent" name="secondSurname" placeholder="Введите фамилию" required autofocus></p>
<p><label for="nameStudent">Имя</label>
    <input type="text" id="nameStudent" name="secondNameStudent" placeholder="Введите имя" required autofocus></p>
<p><label for="groupStudent">Группа</label>
    <input type="text" id="groupStudent" name="secondGroupStudent" placeholder="Введите группу" required autofocus></p>
<p><label for="dateStudent">Дата поступления</label>
    <input type="date" id="dateStudent" name="secondDateStudent" placeholder="Введите дату поступления" required autofocus></p>

    <input type="submit" value="Создать" class="buttonModify">
</form>

</body>
</html>
