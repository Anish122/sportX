

function showclub(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("showfpla").innerHTML="";
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
    document.getElementById("showfpla").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getfplayer.php?q="+str,true);
xmlhttp.send();
}
