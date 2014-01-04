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

$sql="SELECT * FROM playerf1 WHERE teamid = '".$q."'";

$result = mysql_query($sql); 

echo "<select name='driverinfo' id='driverinfo'  onchange='showdriverinfo(this.value)'> ";

echo    "<option value=''>Select Driver</option>";
echo "<div id='showdriinfo' ></div>";
while($row = mysql_fetch_array($result))
  {
 
echo "<option value='"  .$row[0].  "' > "   .$row[1]. "</option>";
  }


mysql_close($con);
?>

</body>
</html>
