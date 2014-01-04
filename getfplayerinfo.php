

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

$sqlb="SELECT * FROM playerfb WHERE pid = '".$q."'";
$resultb = mysql_query($sqlb);
while($row = mysql_fetch_array($resultb))
  {
	  $target_path = $row[9];
	  $target='http://localhost/project/picfy/'.$target_path;
	  echo  '<img src=" '.$target.' "width="150" height="150" style=" float:right; right:100px; " />';
	  echo '<div style="position:relative;right:-500px;bottom:-150px; color:#069;"><h2>' .$row[2]. '</h2></div>';
  }

$sql="SELECT * FROM playerfb WHERE pid = '".$q."'";

$result = mysql_query($sql); 
echo "PLAYER INFORMATION:";  
echo "<table border=2px cellspacing=5px>

<tr>
<th>/</th>
<th></th>

</tr>


<tr>
<td>Name</td>


";
while($row = mysql_fetch_array($result))
  {
  
  echo "<td>"  .$row[2] . "</td>";
  
  echo "</tr>";

  echo "<tr>
<td>Nationality</td>
";
echo "<td>"  .$row[4] . "</td>";
   echo "</tr>";
  
  echo "<tr>
<td>Position</td>
";
echo "<td>"  .$row[3] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Matches PlayedP</td>
";
echo "<td>"  .$row[5] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Goals</td>
";
echo "<td>"  .$row[6] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Yellow Card</td>
";
echo "<td>"  .$row[7] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Red Card</td>
";
echo "<td>"  .$row[8] . "</td>";
  echo "</tr>";
  
  

  }
echo "</table>";








mysql_close($con);
?>

</body>
</html>
