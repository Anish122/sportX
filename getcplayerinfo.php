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
$sqlb="SELECT * FROM playerf WHERE pid = '".$q."'";
$resultb = mysql_query($sqlb);


while($row = mysql_fetch_array($resultb))
  {
	  $target_path = $row[3];
	  $target='http://localhost/project/picfy/'.$target_path;
	  echo  '<img src=" '.$target.' "width="150" height="150" style=" float:right; right:100px; " />';
	  echo '<div style="position:relative;right:-500px;bottom:-150px; color:#069;"><h2>' .$row[2]. '</h2></div>';
  }


$sql="SELECT * FROM playercbat WHERE pid = '".$q."'";

$result = mysql_query($sql); 
echo "BATTING INFORMATION:";  
echo "<table border=2px cellspacing=5px>

<tr>
<th>/</th>
<th>Matches</th>
<th>Runs</th>
<th>Highest</th>
<th>Average</th>
<th>100's</th>
<th>50's</th>
</tr>


<tr>
<td>ODI</td>


";
while($row = mysql_fetch_array($result))
  {
  
  echo "<td>"  .$row[7] . "</td>";
  echo "<td>"  .$row[8] . "</td>";
  echo "<td>"  .$row[9] . "</td>";  
  echo "<td>"  .$row[10] . "</td>";
  echo "<td>"  .$row[11] . "</td>";
  echo "<td>"  .$row[12] . "</td>"; 
  echo "</tr>";

  echo "<tr>
<td>TEST</td>
";
echo "<td>"  .$row[1] . "</td>";
  echo "<td>"  .$row[2] . "</td>";
  echo "<td>"  .$row[3] . "</td>";  
  echo "<td>"  .$row[4] . "</td>";
  echo "<td>"  .$row[5] . "</td>";
  echo "<td>"  .$row[6] . "</td>";  
  echo "</tr>";
  echo "<tr>
<td>T20</td>
";
echo "<td>"  .$row[13] . "</td>";
  echo "<td>"  .$row[14] . "</td>";
  echo "<td>"  .$row[15] . "</td>";  
  echo "<td>"  .$row[16] . "</td>";
  echo "<td>"  .$row[17] . "</td>";
  echo "<td>"  .$row[18] . "</td>";  
  echo "</tr>";

  }
echo "</table>";

$sqla="SELECT * FROM playercbowl WHERE pid = '".$q."'";

$resulta = mysql_query($sqla); 
echo "BOWLING INFORMATION:<br>";
echo "<table border=2px cellspacing=5px>

<tr>
<th>/</th>
<th>Matches</th>
<th>Wicket</th>

<th>Average</th>
<th>Economy</th>
<th>5w's</th>
</tr>


<tr>
<td>ODI</td>


";
while($row = mysql_fetch_array($resulta))
  {
  echo "<td>"  .$row[6] . "</td>";
  echo "<td>"  .$row[7] . "</td>";
  echo "<td>"  .$row[8] . "</td>";
  echo "<td>"  .$row[9] . "</td>";  
  echo "<td>"  .$row[10] . "</td>";
  
  
  echo "</tr>";

  echo "<tr>
<td>TEST</td>
";
echo "<td>"  .$row[1] . "</td>";
  echo "<td>"  .$row[2] . "</td>";
  echo "<td>"  .$row[3] . "</td>";  
  echo "<td>"  .$row[4] . "</td>";
  echo "<td>"  .$row[5] . "</td>";
   
  echo "</tr>";
  echo "<tr>
<td>T20</td>
";
echo "<td>"  .$row[11] . "</td>";
  echo "<td>"  .$row[12] . "</td>";
echo "<td>"  .$row[13] . "</td>";
  echo "<td>"  .$row[14] . "</td>";
  echo "<td>"  .$row[15] . "</td>";  
  echo "</tr>";

  }
echo "</table>";





mysql_close($con);
?>

</body>
</html>
