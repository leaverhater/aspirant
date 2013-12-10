<%--
  Created by IntelliJ IDEA.
  User: vadya
  Date: 23.05.13
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="ru.bmstu.aspirant.CatDocx" %>
<%@ page import="ru.bmstu.aspirant.ZipIt" %>
<%@ page import="java.io.FileInputStream" %>
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
    int maxRows = 100;
    int rowsNum = 0;
    String years;
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
    Properties prop1 = new Properties();

    try {
//        set the properties value
        for (int i = 0; i < rowsNum; i++) {
            prop.setProperty("index" + (i+1), tableValue[i][0]);
            prop.setProperty("discipline" + (i+1), tableValue[i][1]);
            prop.setProperty("time" + (i+1), tableValue[i][2]);
        }
        prop.setProperty("rowsNum", ""+rowsNum);
        prop1.load(new FileInputStream("/home/vadya/content1.properties"));
        years = prop1.getProperty("time");

        if (years.equals("3 года")) {
            prop.store(new FileOutputStream("/home/vadya/content6.properties"), null);
        } else {
            prop.store(new FileOutputStream("/home/vadya/content7.properties"), null);
        }
//        save properties to project root folder


    } catch (IOException ex) {
        ex.printStackTrace();
    }

    CatDocx.concatDocx();
    ZipIt.createDocx();
%>

Документ сгенерирован, <a href="file:///home/vadya/example1.docx">скачать</a>
</body>
</html>