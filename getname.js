// JavaScript Document
function showname()
{
var str=eheh;
var xmlhttp;
if (str=="")
  {
  document.getElementById("showname").innerHTML="";
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
    document.getElementById("showname").innerHTML=xmlhttp.responseText;
    }
  }
  alert("hehehe");
xmlhttp.open("GET","searchlogin.php",true);
xmlhttp.send();
}
