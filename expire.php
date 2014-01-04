<?php
session_start();
// set timeout period in seconds
$inactive = 300;
// check to see if $_SESSION['timeout'] is set
if(isset($_SESSION['timeout']) ) {
	$session_life = time() - $_SESSION['start'];
	if($session_life > $inactive)
        { session_destroy(); header("Location: logoutpage.php"); }
}
$_SESSION['timeout'] = time();
?>