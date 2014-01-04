// JavaScript Document
// JavaScript Document
function showTeam(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("showdri").innerHTML="";
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
    document.getElementById("showdri").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getf1driver.php?q="+str,true);
xmlhttp.send();
}
