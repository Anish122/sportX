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

$sql="SELECT * FROM playerf WHERE cid = '".$q."'";

$result = mysql_query($sql); 

echo "<select name='playerinfobat' id='playerinfobat'  onchange='showplayerinfo(this.value)'> ";

echo    "<option value=''>Select Player</option>";
echo "<div id='showmeinfo' ></div>";
while($row = mysql_fetch_array($result))
  {
 
echo "<option value='"  .$row[0].  "' > "   .$row[2]. "</option>";
  }


mysql_close($con);
?>

</body>
</html>
