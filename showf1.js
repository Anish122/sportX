// JavaScript Document
function showschedule()
{
	
var xmlhttp;
var date = new Date();
var d  = date.getDate();
var day = (d < 10) ? '0' + d : d;
var m = date.getMonth() + 1;
var month = (m < 10) ? '0' + m : m;
var yy = date.getYear();
var year = (yy < 1000) ? yy + 1900 : yy;

var str=year + "-" + month + "-" + day;   

if (str=="")
  {
  document.getElementById("showschedule").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("showschedule").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getf1schedule.php?q="+str,true);
xmlhttp.send();
}

function shownews()
{
	
var xmlhttp;
var date = new Date();
var d  = date.getDate();
var day = (d < 10) ? '0' + d : d;
var m = date.getMonth() + 1;
var month = (m < 10) ? '0' + m : m;
var yy = date.getYear();
var year = (yy < 1000) ? yy + 1900 : yy;

var str=year + "-" + month + "-" + day;   

if (str=="")
  {
  document.getElementById("shownews").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("shownews").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getf1news.php?q="+str,true);
xmlhttp.send();
}

function showmoref1schedule(str)
	{
	var xmlhttp;
   if (str=="")
  {
  document.getElementById("showmoreschedule").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("showmoreschedule").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getmoref1schedule.php?q="+str,true);
xmlhttp.send();
}

function showmoref1news(str)
	{
	var xmlhttp;
   if (str=="")
  {
  document.getElementById("showmoref1news").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("showmoref1news").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getmoref1news.php?q="+str,true);
xmlhttp.send();
}