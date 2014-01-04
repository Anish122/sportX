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
  {
echo ' <div class="schedulechunk clearfix">
						<ul><li style="background:#dfdfdf;">
								<div class="picbox-rsidevsmall">
									<div class="imgbox">'; 
								echo "	"	.$row[1].	" " ;
									echo'</div>
								</div>
							</li>
							<li style="width:464px;background:#e9e9e9;">
								<span class="scheduledata">';
								echo "	"	.$row[0].	" " ;
								echo '</span>
							</li></ul>
						</div>';
						      
}
mysql_close($con);
?>

</body>
</html>
