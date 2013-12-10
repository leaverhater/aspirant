<%--
  Created by IntelliJ IDEA.
  User: vadya
  Date: 24.05.13
  Time: 22:44
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
<script language="javascript" src="/js/js.js"></script>
<body>
<%
    int maxRows = 100;
    int rowsNum = 0;
    request.setCharacterEncoding("UTF-8");
    String tableValue[][] = new String[maxRows][3];
    for (int i = 0; i < maxRows; i++) {
        if ((tableValue[i][0] = request.getParameter("index" + (i+1))) != null)
        {
            tableValue[i][1] = request.getParameter("discipline" + (i+1));
            tableValue[i][2] = request.getParameter("time" + (i+1));
            rowsNum++;
        } else
            break;
    }
    Properties prop = new Properties();

    try {
//        set the properties value
        for (int i = 0; i < rowsNum; i++) {
            prop.setProperty("index" + (i+1), tableValue[i][0]);
            prop.setProperty("discipline" + (i+1), tableValue[i][1]);
            prop.setProperty("time" + (i+1), tableValue[i][2]);
        }
        prop.setProperty("rowsNum", ""+rowsNum);

//        save properties to project root folder
        prop.store(new FileOutputStream("/home/vadya/content6.properties"), null);

    } catch (IOException ex) {
        ex.printStackTrace();
    }
%>

<%
    //    CatDocx.concatDocx();
//    ZipIt.createDocx();
%>
<h5><span class="g-bold">Образовательная часть индивидуального плана работы аспиранта на календарный период от 20.02.2017 до 20.10.2017</span></h5>
<form method="post" action="done.jsp">
    <table class="default" >
        <tbody id="table">
        <tr class="title">
            <td>Индекс</td>
            <td>Дисциплины</td>
            <td>Часы</td>
            <td></td>
            <td></td>
        </tr>
        <tr id="1">
            <td id="td11"><input type="text" class="ui-textfield" name="index1" /></td>
            <td id="td21"><input type="text" class="ui-textfield" name="discipline1" /></td>
            <td id="td31"><input type="text" class="ui-textfield" name="time1" /></td>
            <td id="td41"><input type="button" class="ui-button" onclick="addElement()" value="Добавить строку"></td>
            <td id="td51"><input type="button" class="ui-button" onclick="removeElement()" value="Удалить строку"></td>
        </tr>
        </tbody>
    </table>
    <br><input type="submit" class="ui-button" name="Next Page" value="Далее" />
</form>
</body>
</html>