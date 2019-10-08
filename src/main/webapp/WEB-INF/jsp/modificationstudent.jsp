<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../css/style2.css">
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


<div class="link2">
    <a href="/">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
</div>


<span>
    <strong class="modificstudent">Для модифицирования введите новые значения и нажмите кнопку "Применить"
    </strong>
</span>

<form action="/modificationstudent" method="post">
    <p><label for="surnameStudent">Фамилия</label>
        <input type="text" id="surnameStudent" name="secondSurname" placeholder="${surname.surname}" required autofocus>
    </p>
    <p><label for="nameStudent">Имя</label>
        <input type="text" id="nameStudent" name="secondNameStudent" placeholder="${name.name}" required autofocus></p>
    <p><label for="groupStudent">Группа</label>
        <input type="text" id="groupStudent" name="secondGroupStudent" placeholder="${group.group}" required autofocus>
    </p>
    <p></p><label for="dateStudent">Дата поступления</label>
    <input type="date" id="dateStudent" name="secondDateStudent" placeholder="${date.date}" required
           autofocus></p>

    <input type="hidden" name="studId" value="${student.id}">
    <input type="submit" value="Применить" class="buttonModify">

</form>

</body>
</html>