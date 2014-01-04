// JavaScript Document

function fun(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("videoshow").innerHTML="";
  alert("Nothing to show");
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  alert("playing this video!!! " ,str);
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("videoshow").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","videoplay.php?q="+str,true);
xmlhttp.send();
}