<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/styleLoginAndPassword.css">
</head>
<body>

<form action="http://echo.htmlacademy.ru" method="post" target="_blank">

    <fieldset>
        <legend>Выберите тип пользователя</legend>
        <label for="visitor">Посетитель</label>
        <input type="radio" name="choose type of user" value="1" id="visitor">
        <label for="administrator">Администратор</label>
        <input type="radio" name="choose type of user" value="2" id="administrator">
    </fieldset>

    <fieldset>
        <legend>Введите логин и пароль</legend>
        <label for="login">Логин</label>
        <input type="text" id="login" name="login" placeholder="Введите логин" required>
        <label for="password">Пароль</label>
        <input type="password" id="password" name="password" minlength="5" maxlength="12" required
               placeholder="Введите пароль">
    </fieldset>

    <input type="submit">
    <input type="reset">
    <input type="hidden" name="cost" value="100">
</form>

</body>
</html> -->

<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style4.css">
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

<span><strong class="modification">Отображена успеваемость для следующего студента:</strong></span>

<table class="tutor">
    <tr style="background-color: green">
        <td>Фамилия</td>
        <td>Имя</td>
        <td>Группа</td>
        <td>Дата поступления</td>
    </tr>
    <tr>
        <td>Фёдоров</td>
        <td>Фёдор</td>
        <td>КП-1251</td>
        <td>2018-02-21</td>
    </tr>
</table>

<table class="semestr">
    <tr style="background-color: green">
        <td>Дисциплина</td>
        <td>Оценка</td>
    </tr>
    <tr>
        <td>Алгебра</td>
        <td><input type="number" min="2" max="5" required aria-required="true" >
        </td>
    </tr>
    <tr>
        <td>Химия</td>
        <td>3</td>
    </tr>
    <tr>
        <td>Физика</td>
        <td>3</td>
    </tr>
    <tr>
        <td>Теория алгоритмизации</td>
        <td>5</td>
    </tr>
    <div class="choose">Выбрать семестр</div>

    <fieldset>
        <select>
            <optgroup>
                <option value="1">Семестр 1</option>
                <option value="2">Семестр 2</option>
                <option value="3">Семестр 3</option>
                <option value="4">Семестр 4</option>
            </optgroup>
        </select>
    </fieldset>
    <button>Выбрать</button>
</table>

</body>
</html>-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <a href="exit">Logout</a>
    </span>
</div>

<div>
    <div class="link2">
        <a href="/students">Студенты</a>
    </div>
</div>

<div>
    <div class="link3">
        <a href="/disciplines">Дисциплины</a>
    </div>
</div>

<div>
    <div class="link4">
        <a href="/semestrs">Семестры</a>
    </div>
</div>

</body>
</html>



