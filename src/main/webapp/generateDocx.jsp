<%@ page import="ru.bmstu.aspirant.CatDocx" %>
<%@ page import="ru.bmstu.aspirant.ZipIt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    String[] arg = {name, form, dep, fullDep, spec, time, manager, consult, start, end};
    CatDocx.concatDocx ();
    ZipIt.createDocx();
%>
Документ сгенерирован. <a href=<%=ZipIt.getDocxName()%>Скачать</a>
</body>
</html>