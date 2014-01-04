<html>
<body>
<?php
$q=$_GET["q"];

$con = mysql_connect('localhost', 'root', '');
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("minor", $con);
$sqlb="SELECT * FROM video WHERE vid = '".$q."'";
$resultb = mysql_query($sqlb);


while($row = mysql_fetch_array($resultb))
  {
	  $target_path = $row[1];
	  $target='http://localhost/project/videos/'.$target_path;
	  echo "<embed quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' align='middle' play='true' loop='true' scale='showall' devicefont='false' menu='true' allowfullscreen='true' allowscriptaccess='always' salign='' width='650' height='321' src='".$target."' wmode='transparent' bgcolor='' flashvars='' ></embed<br><br><br><br><br>";
	  
  }


mysql_close($con);
?>

</body>
</html>
