<%--
  Created by IntelliJ IDEA.
  User: vadya
  Date: 15.04.13
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Properties" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" media="all" href="css/layout.css" />
<link type="text/css" rel="stylesheet" media="all" href="css/icons.css" />
<link type="text/css" rel="stylesheet" media="all" href="css/ui.css" />
<link type="text/css" rel="stylesheet" media="all" href="css/shared.css" />
<link type="text/css" rel="stylesheet" media="all" href="css/style.css" />
<link type="text/css" rel="stylesheet" media="all" href="css/ui-3.css" />
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String form = request.getParameter("form");
    String dep = request.getParameter("dep");
    String fullDep = request.getParameter("fullDep");
    String spec = request.getParameter("spec");
    String time = request.getParameter("time");
    String manager = request.getParameter("manager");
    String consult = request.getParameter("consult");
    String start = request.getParameter("start");
    String end = request.getParameter("end");
    Properties prop = new Properties();

    try {
        //set the properties value
        prop.setProperty("name", name);
        prop.setProperty("form", form);
        prop.setProperty("dep", dep);
        prop.setProperty("fullDep", fullDep);
        prop.setProperty("spec", spec);
        prop.setProperty("time", time);
        prop.setProperty("manager", manager);
        prop.setProperty("consult", consult);
        prop.setProperty("start", start);
        prop.setProperty("end", end);

        //save properties to project root folder
        prop.store(new FileOutputStream("/home/vadya/content1.properties"), null);

    } catch (IOException ex) {
        ex.printStackTrace();
    }
%>

<%

%>
<h5><span class="g-bold">Тема научной работы (диссертации) и ее общая характеристика</span></h5>
<form method="post" action="page3.jsp">
    Тема научной работы:
    <br><input type="text" class="ui-textfield" name="theme" />
    <br>Актуальность темы:
    <br><input type="text" class="ui-textfield" name="topicality" />
    <br>Цель работы:
    <br><input type="text" class="ui-textfield" name="goal" />
    <br>Научная новизна работы:
    <br><input type="text" class="ui-textfield" name="newness" />
    <br>Практическая ценность:
    <br><input type="text" class="ui-textfield" name="value" />
    <br>Реализация результатов:
    <br><input type="text" class="ui-textfield" name="realization" />
    <br>Научные публикации, доклады, участие в научно-технических олимпиадах, получение стипендий
    Президента РФ и Правительства РФ в студенческие годы:
    <br><input type="text" class="ui-textfield" name="publication" />
    <br>Заведующий кафедрой:
    <br><input type="text" class="ui-textfield" name="head" />
    <br>Дата:
    <br><input type="text" class="ui-textfield" name="date" />
    <br><input type="submit" class="ui-button" name="Next Page" value="Далее" />
</form>
</body>
</html>