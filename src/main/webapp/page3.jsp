<%--
  Created by IntelliJ IDEA.
  User: vadya
  Date: 15.04.13
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Properties" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    String theme = request.getParameter("theme");
    String topicality = request.getParameter("topicality");
    String goal = request.getParameter("goal");
    String newness = request.getParameter("newness");
    String value = request.getParameter("value");
    String realization = request.getParameter("realization");
    String publication = request.getParameter("publication");
    String head = request.getParameter("head");
    String date = request.getParameter("date");
    Properties prop = new Properties();

    try {
        //set the properties value
        prop.setProperty("theme", theme);
        prop.setProperty("topicality", topicality);
        prop.setProperty("goal", goal);
        prop.setProperty("newness", newness);
        prop.setProperty("value", value);
        prop.setProperty("realization", realization);
        prop.setProperty("publication", publication);
        prop.setProperty("head", head);
        prop.setProperty("date", date);

        //save properties to project root folder
        prop.store(new FileOutputStream("/home/vadya/content2.properties"), null);

    } catch (IOException ex) {
        ex.printStackTrace();
    }
%>

<%

%>
<form method="post" action="page4.jsp">
    Замечания по названию диссертации и общей характеристике работы экспертов Совета при ректоре
    по кадровой политике в области подготовки научно-педагогических и научных кадров в
    МГТУ им. Н.Э.Баумана:
    <br><input type="text" class="ui-textfield" name="remark" />
    <br>Руководитель экспертной группы:
    <br><input type="text" class="ui-textfield" name="expert" />
    <br><input type="submit" class="ui-button" name="Next Page" value="Далее" />
</form>
</body>
</html>