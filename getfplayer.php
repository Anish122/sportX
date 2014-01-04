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

$sql="SELECT * FROM playerfb WHERE teamid = '".$q."'";

$result = mysql_query($sql); 

echo "<select name='fplayerinfo' id='fplayerinfo'  onchange='showfplayerinfo(this.value)'> ";

echo    "<option value=''>Select Player</option>";
echo "<div id='showfplainfo' ></div>";
while($row = mysql_fetch_array($result))
  {
 
echo "<option value='"  .$row[0].  "' > "   .$row[2]. "</option>";
  }


mysql_close($con);
?>

</body>
</html>
