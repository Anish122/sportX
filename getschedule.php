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

$sql="SELECT * FROM cschedule WHERE sc_date = '".$q."'";

$result = mysql_query($sql); 

while($row = mysql_fetch_array($result))
  {
 echo'<li><span class="right"></span><dl style="width:245px;"><dd class="schtitle"> ';
									
		echo "	"	.$row[2].	" " ;
							
	echo		'</dd><dd class="date"> ';
	echo  " "   .$row[1]. "";
	echo   "   -  "  .$row[3]. "" ;
	echo ' &nbsp;</dd></dl> </li>';
						      
}

$sql="SELECT * FROM fschedule WHERE sc_date = '".$q."'";

$result = mysql_query($sql); 

while($row = mysql_fetch_array($result))
  {
 echo'<li><span class="right"></span><dl style="width:245px;"><dd class="schtitle"> ';
									
		echo "	"	.$row[2].	" " ;
							
	echo		'</dd><dd class="date" >';
	echo    " "   .$row[1]. "";
	echo   "   -  "  .$row[3]. "" ;
	echo ' &nbsp;</dd></dl> </li>';
						      
}

$sql="SELECT * FROM f1schedule WHERE sc_date = '".$q."'";

$result = mysql_query($sql); 

while($row = mysql_fetch_array($result))
  {
 echo'<li><span class="right"></span><dl style="width:245px;"><dd class="schtitle" ';
									
		echo ">	"	.$row[2].	" " ;
							
	echo		'</dd><dd class="date" ';
	echo    "> '"   .$row[1]. "'";
	echo '&nbsp;</dd></dl> </li>';
						      
}


mysql_close($con);
?>

</body>
</html>
