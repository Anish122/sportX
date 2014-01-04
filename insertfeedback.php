<html>
<body>


<?php
if(isset($_POST['send'])){
	$name = $_POST['name'];
	$email = $_POST['email'];
	$gender = $_POST['gender'];
	$country = $_POST['country'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	
	$myFile = "feedback/$email.txt";
	$stringData = "\nVisitor name:    $name \n
				   Visitor email:   $email \n
				   Visitor gender:  $gender \n 
				   Visitor country: $country \n
				   Message subject: $subject \n
				   Message        : $message \n ";
	$strlength = strlen($stringData);
	$create = fopen($myFile, "w");
	$write = fwrite($create, $stringData, $strlength);
	$close = fclose($create); 
	echo 'Thank you for your Feedback. Your feedback is important to us. 
	      We will look forward to improve our service based upon your feedback <br>';
		  
		  echo '<br><a href="homepage.php"><input type="submit" name="homepage" value="homepage"></a><br><br>';
}

else 
echo '<script type="text/javascript">alert("error getting the form data. Retype the feedback form.");</script>';
?>

</body>
</html>
