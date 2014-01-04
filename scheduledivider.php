<html>
<body>

 <?php

$con = mysql_connect('localhost', 'root', '');
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("minor", $con);

$sql="SELECT * FROM schedule WHERE sports = 'cricket'";

$result = mysql_query($sql); 
while($row = mysql_fetch_array($result))
  {
 "INSERT INTO cschedule(sc_id,sc_date,sc_name,sc_time)
VALUES ( '" .$row[0]. "' ,'" .$row[2]. "','" .$row[3].  "','" .$row[4].  "')";
 }


$sqla="SELECT * FROM schedule WHERE sports = 'football'";

$resulta = mysql_query($sqla); 
while($row = mysql_fetch_array($resulta))
  {
 "INSERT INTO fschedule(sc_id,sc_date,sc_name,sc_time)
VALUES ( '" .$row[0]. "' ,'" .$row[2]. "','" .$row[3].  "','" .$row[4].  "')";
 }
 
 $sqlb="SELECT * FROM schedule WHERE sports = 'formula1'";

$resultb = mysql_query($sqlb); 
while($row = mysql_fetch_array($resultb))
  {
 "INSERT INTO f1schedule(sc_id,sc_date,sc_name,sc_time)
VALUES ( '" .$row[0]. "' ,'" .$row[2]. "','" .$row[3].  "','" .$row[4].  "')";
 }


mysql_close($con);
?>

</body>
</html>
