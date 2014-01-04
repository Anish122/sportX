

function showfplayerinfo(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("showfplainfo").innerHTML="";
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
    document.getElementById("showfplainfo").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getfplayerinfo.php?q="+str,true);
xmlhttp.send();
}
// JavaScript Document