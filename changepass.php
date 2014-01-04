<?php
session_start();
if (!isset($_SESSION['username'])) {
  header('Location:  loginf.php');
}
echo  $_SESSION['username'];
?>
<html>
<title>change password</title>
<body>
<?php

if ($_POST['resetbtn'])
{
    $opass = $_POST['opass'];
	$npass = $_POST['npass'];
	$cpass = $_POST['cpass'];
	$email = $_POST['email'];
	
	if ($opass)
	{
		if ($npass)
		{
			if ($cpass)
		{
			if ($email)
			{
				if ((strlen($email)>7) && (strstr($email,"@")) && (strstr($email,".")))
				{
					$con = mysql_connect('localhost', 'root', '');
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
mysql_select_db("minor", $con);
$query= mysql_query("SELECT * FROM registration WHERE username='$email'");
$numrows = mysql_num_rows($query);
if ($numrows==1)
{
	$row = mysql_fetch_array($query);
	$dbpass = $row[7];
	if ($opass == $dbpass)
	{
		if ($npass == $cpass)
		{
			mysql_query("UPDATE registration SET password='$cpass' WHERE username='$email' ");
			$query= mysql_query("SELECT * FROM registration WHERE username='$email' AND password='$cpass'");
			if ($numrows == 1)
			{
				$webmaster = "agarwalanish91@gmail.com";
			$headers= "From: anish<$webmaster>";
			$subject= "your new password";
			$message = "hello, your password is changed. your password is below. \n";
			$message .= "Password: $cpass\n";
			if(mail($email, $subject, $message, $headers)){
				
			echo"Congratulation!!!password has been changed.Email has been sent containing your new password";	
				}
			else
			echo"An error occured and email is not sent to your id containing the new password";
			
			
				}
else
echo "An error occured and password was not changed";
			}
else
echo "new password and confirm password did not matched";
		}
else
echo "Old Password not matched";
	}
else
echo "Username does not exist!! try again";
					}
else
echo "Provide a valid username";
				}
else
echo "provide username";
			}
else
echo "confirm the password";
			}
else
echo "Enter the new password";
		}
else
echo "Enter the old password";
}
else
echo "please enter your old password";
echo'<h1>Forgot Password</h1>
Enter your email address and old password corrosponding to your
email address. Enter the new password and confirm the password to change it.<br><br>

<form action="changepass.php" method="POST">
<b>username:</b> <input type="text" name="email" maxlength="30" value="" method="POST">
<b>Old Password:</b> <input type="text" name="opass" maxlength="30" value="" method="POST">
<b>New Password:</b> <input type="text" name="npass" maxlength="30" value="" method="POST">
<b>confirm Password:</b> <input type="text" name="cpass" maxlength="30" value="" method="POST">

<input type="submit" name="resetbtn" value="Get New Password" method="POST">
</form>';


?>

</body>
</html>
