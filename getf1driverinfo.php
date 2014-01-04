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

$sqlb="SELECT * FROM playerf1 WHERE pid = '".$q."'";
$resultb = mysql_query($sqlb);
while($row = mysql_fetch_array($resultb))
  {
	  $target_path = $row[13];
	  $target='http://localhost/project/picfy/'.$target_path;
	  echo  '<img src=" '.$target.' "width="150" height="150" style=" float:right; right:100px; " />';
	  echo '<div style="position:relative;right:-500px;bottom:-150px; color:#069;"><h2>' .$row[1]. '</h2></div>';
  }

$sql="SELECT * FROM playerf1 WHERE pid = '".$q."'";

$result = mysql_query($sql); 
echo "DRIVER INFORMATION:";  
echo "<table border=2px cellspacing=5px>

<tr>
<th>/</th>
<th></th>

</tr>


<tr>
<td>Team</td>


";
while($row = mysql_fetch_array($result))
  {
  
  echo "<td>"  .$row[3] . "</td>";
  
  echo "</tr>";

  echo "<tr>
<td>Nationality</td>
";
echo "<td>"  .$row[4] . "</td>";
   echo "</tr>";
  
  echo "<tr>
<td>Podium</td>
";
echo "<td>"  .$row[5] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Points</td>
";
echo "<td>"  .$row[6] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Grand Prix Entered</td>
";
echo "<td>"  .$row[7] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>World Championship</td>
";
echo "<td>"  .$row[8] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Highest Race Finish</td>
";
echo "<td>"  .$row[9] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Highest Grid Position</td>
";
echo "<td>"  .$row[10] . "</td>";
  echo "</tr>";

 echo "<tr>
<td>Date Of Birth</td>
";
echo "<td>"  .$row[11] . "</td>";
  echo "</tr>";
  
   echo "<tr>
<td>Place Of Birth</td>
";
echo "<td>"  .$row[12] . "</td>";
  echo "</tr>";

  }
echo "</table>";








mysql_close($con);
?>

</body>
</html>
