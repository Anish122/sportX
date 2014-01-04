<html>
<body>
<?php
$fname=$_POST["element_1_1"];
$lname=$_POST["element_1_2"];
$username=$_POST["element_2"];
$birthday=$_POST["element_3_1"];
$birthmonth=$_POST["element_3_2"];
$birthyear=$_POST["element_3_3"];
$gender=$_POST["element_6"];
$password=$_POST["element_4"];
$location=$_POST["element_5"];
$pro=mysql_connect("localhost","root","");
if (!$pro)
{
  die('Could not connect: ' . mysql_error());
}
mysql_select_db("minor",$pro);

$b=mysql_query("select * from registration");

$c=0;
while($row = mysql_fetch_array($b))
  {
    if($username==$row[2]) 
    {
      $c=1;
    }	
	else{
		$c=0;
		}  
  
  }
  
if($c==0)
{
  $a=mysql_query("insert into registration values('$fname','$lname','$username','$birthday','$birthmonth','$birthyear','$gender','$password','$location')");
  echo ' <script>
  alert("Account has been created. Login with ur username and password");
  </script>' ;
  include "loginf.php";
}

else 
 {
  echo ' <script>
  alert("Re-enter the form. Same id exists.");
  </script>' ;
   include "signin.html";
   } 

  
  mysql_close($con);
?>
</body>
</html>