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

$sql="SELECT * FROM cnews WHERE newsdate = '".$q."'";

$result = mysql_query($sql); 

while($row = mysql_fetch_array($result))
  {echo "<li  class='title2'>	";
  echo"<a href=''>";
  echo" ".$row[0]. "</a></li>" ;
							
						      
}


mysql_close($con);
?>

</body>
</html>
