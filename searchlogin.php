<html><body>
<?php
$username=$_POST["username"];
$password=$_POST["password"];

$pro=mysql_connect("localhost","root","");
if (!$pro)
{
  die('Could not connect: ' . mysql_error());
}
mysql_select_db("minor",$pro);
$a=mysql_query("SELECT  * from registration");
$b=0;
while($row = mysql_fetch_array($a))
  {
    if($username==$row[2] && $password==$row[7]) 
    {
      $b=1;
    }
	else
	{$b=0;}	  
  }
  if($b==1)
  {
	  ?>
  <script type="text/javascript"> alert("congratulation!!you have been successfully loggedIn");</script>
  <?php
	  session_start();
 $_SESSION['username']= mysql_query("SELECT username FROM registration WHERE username= $username");
header('Location: homepage2.php');
  }
  else
  
  {
  include "loginf.php";
  ?>
  <script type="text/javascript">alert("Something really went wrong. Enter login and password again");</script>
  <?php
  }
 ?>
 </body></html>