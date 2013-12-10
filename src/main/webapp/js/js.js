/**
 * Created with IntelliJ IDEA.
 * User: vadya
 * Date: 24.05.13
 * Time: 22:27
 * To change this template use File | Settings | File Templates.
 */
var trNum = 1;
function addElement() {
    trNum++;
    var table = document.getElementById('table');
    var newtr = document.createElement('tr');
    var trId = trNum;
    newtr.setAttribute('id',trId);
    table.appendChild(newtr);
    var tr = document.getElementById(trId);

    var newtd = document.createElement('td');
    newtd.setAttribute('id','td1'+trNum);
    tr.appendChild(newtd);
    var td = document.getElementById('td1'+trNum);
    var input = document.createElement('input');
    input.setAttribute('type', 'text');
    input.setAttribute('name', 'index'+trNum);
    input.setAttribute('class', 'ui-textfield');
    td.appendChild(input);

    newtd = document.createElement('td');
    newtd.setAttribute('id','td2'+trNum);
    tr.appendChild(newtd);
    td = document.getElementById('td2'+trNum);
    input = document.createElement('input');
    input.setAttribute('type', 'text');
    input.setAttribute('name', 'discipline'+trNum);
    input.setAttribute('class', 'ui-textfield');
    td.appendChild(input);

    newtd = document.createElement('td');
    newtd.setAttribute('id','td3'+trNum);
    tr.appendChild(newtd);
    td = document.getElementById('td3'+trNum);
    input = document.createElement('input');
    input.setAttribute('type', 'text');
    input.setAttribute('name', 'time'+trNum);
    input.setAttribute('class', 'ui-textfield');
    td.appendChild(input);

    newtd = document.createElement('td');
    newtd.setAttribute('id','td4'+trNum);
    tr.appendChild(newtd);
    td = document.getElementById('td4'+trNum);
    input = document.createElement('input');
    input.setAttribute('type', 'button');
    input.setAttribute('onclick', 'addElement()');
    input.setAttribute('value', 'Добавить строку');
    input.setAttribute('class', 'ui-button');
    td.appendChild(input);

    newtd = document.createElement('td');
    newtd.setAttribute('id','td5'+trNum);
    tr.appendChild(newtd);
    td = document.getElementById('td5'+trNum);
    input = document.createElement('input');
    input.setAttribute('type', 'button');
    input.setAttribute('onclick', 'removeElement()');
    input.setAttribute('value', 'Удалить строку');
    input.setAttribute('class', 'ui-button');
    td.appendChild(input);

    var num = trNum - 1;
    tr = document.getElementById(num);
    td = document.getElementById('td4'+num);
    tr.removeChild(td);
    td = document.getElementById('td5'+num);
    tr.removeChild(td);
    }

function removeElement() {
    var table = document.getElementById('table');
    var tr = document.getElementById(trNum);
    table.removeChild(tr);
    trNum--;

    tr = document.getElementById(trNum);
    var newtd = document.createElement('td');
    newtd.setAttribute('id','td4'+trNum);
    tr.appendChild(newtd);
    var td = document.getElementById('td4'+trNum);
    input = document.createElement('input');
    input.setAttribute('type', 'button');
    input.setAttribute('onclick', 'addElement()');
    input.setAttribute('value', 'Добавить строку');
    input.setAttribute('class', 'ui-button');
    td.appendChild(input);

    newtd = document.createElement('td');
    newtd.setAttribute('id','td5'+trNum);
    tr.appendChild(newtd);
    td = document.getElementById('td5'+trNum);
    input = document.createElement('input');
    input.setAttribute('type', 'button');
    input.setAttribute('onclick', 'removeElement()');
    input.setAttribute('value', 'Удалить строку');
    input.setAttribute('class', 'ui-button');
    td.appendChild(input);
}

