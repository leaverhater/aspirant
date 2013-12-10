
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Индивидуальный план работы аспиранта</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" media="all" href="css/layout.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/icons.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/ui.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/shared.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/style.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/ui-3.css" />
</head>
<body>

<h5><span class="g-bold">Основная информация</span></h5>

<form method="post" action="page2.jsp">
    Фамилия, имя, отчество аспиранта полностью:
    <br><input class="ui-textfield" type="text" name="name" />
    <br>Форма обучения (очная или заочная):
    <br><input class="ui-textfield" type="text" name="form" />
    <br>Кафедра (индекс):
    <br><input class="ui-textfield" type="text" name="dep" />
    <br>Полное наименование кафедры:
    <br><input class="ui-textfield" type="text" name="fullDep" />
    <br>Научная специальность (указывается шифр и наименование специальности):
    <br><input class="ui-textfield" type="text" name="spec" />
    <br>Срок обучения в аспирантуре:
    <br>    <input type="radio" name="time" value="3 года" checked="checked">3 года
            <input type="radio" name="time" value="4 года">4 года
    <br>Научный руководитель (фамилия, имя, отчество, ученая степень, ученое звание):
    <br><input class="ui-textfield" type="text" name="manager" />
    <br>Научный консультант (фамилия, имя, отчество, Ученая степень, ученое звание):
    <br><input class="ui-textfield" type="text" name="consult" />
    <br>Дата зачисления в аспирануру:
    <br><input class="ui-textfield" type="date" name="start" />
    <br>Дата окончания аспирантуры:
    <br><input class="ui-textfield" type="date" name="end" />
    <br><br><input type="submit" class="ui-button" name="Next Page" value="Далее" />
</form>
<%

%>
</body>
</html>
