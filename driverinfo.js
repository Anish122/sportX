// JavaScript Document
// JavaScript Document
function showdriverinfo(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("showdriinfo").innerHTML="";
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
    document.getElementById("showdriinfo").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getf1driverinfo.php?q="+str,true);
xmlhttp.send();
}
