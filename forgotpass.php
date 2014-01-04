<?php
// Inialize session
session_start();
// Check, if user is already login, then jump to secured page
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>forgot password</title>
<meta name="Description" content="">
<meta name="Keywords" content="">

<link rel="stylesheet" type="text/css" href="reset.css" />
<link rel="stylesheet" type="text/css" href="screen.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="js/ready.js"></script>
<script type="text/javascript" src="js/ready1.js"></script>

<script src="scheduledivider.js" type="text/javascript"></script>
<script src="show.js" type="text/javascript"></script>
<script src="feedback.js" type="text/javascript"></script>

<script src="videoplay.js"></script>
</head>

<body onLoad="showschedule();shownews();">
<div id="wrapper" class="clearfix">
		<div align="center" style="padding-top:4px; float:right">
     
        <img src="images/animation/f1.gif" alt="formula1" style=" position:relative;left:-50px;"></div>
       
		<div id="headerwrap">
        
			<div id="header">
            
				<div id="topbannerframe">
			
             				</div>
				
<div >
<a href="homepage.php" style="position:relative; left:25px; top:-16px;"><img src="images/sportx.gif" height="90" width="130" /></a>
</div>
	
<div class="socialico">
<ul>
<li><a href="pagelink.png" target="_blank"><img src="images/fb-ico.gif" alt="" /></a></li>
<li><img src="images/animation/cricket2.gif" alt="cricket" style="position:relative; left:220px; top:400px;"></li>
   <li>    <img src="images/animation/football.gif" alt="football" style="position:relative; right:-100px; top:100px;"></li>
   <li><img src="images/animation/cricket2.gif" alt="cricket" style="position:relative; right:1130px; top:400px;"></li>
   <li>    <img src="images/animation/football.gif" alt="football" style="position:relative; left:-750px; top:-30px;"></li>
</ul>
</div><!--socialico-->
				
<div class="search">
<form name="search_form" action="x/search/" method="GET"> 
<input type="text" name="search_for" id="search_for" style="position:relative;top:-130px;" value=""/><input type="image" src="images/gobutton.gif" style="position:relative ;top:-125px;left:2px;width:25px; height:15px; border:none;"/>
					</form>
				</div>
				
			</div>
			
		</div>

<div class="menu">
<div id="smoothmenu1" class="ddsmoothmenu">
<ul>
<li><a href="homepage.php" class="topnav topnav-home">home</a></li>
<li><a href="schedule.php" class="topnav topnav-schedule ">schedule</a></li>
				
<li><a href="news.php" class="topnav topnav-news ">news</a></li>
				<li><a href="video.php" class="topnav topnav-videos ">videos</a></li>
                <li><a href="cricket.php" class="topnav topnav-aboutus ">Sports</a>
					<ul>
                      <li><a href="cricket.php">Cricket</a></li>
              <li><a href="football.php">Football</a></li>
 <li><a href="formula1.php">Formula 1</a></li>
					</ul>
        </li>
        <li><a href="aboutus.php" class="topnav topnav-aboutus ">aboutus</a>
					<ul>
                      <li><a href="aboutus.php">About Us</a></li>
              
 <li><a href="meetus.php">Meet Us</a></li>
					</ul>
				
</li>
</ul>
			</div>
		</div><!--menu-->		
	<div id="midcontent">
		<div id="leftcontent">
			
			<div class="leftwidebox">
				
				<!--slideshow box-->
				<h1><div class="title"><img src="images/highlights.gif" alt="" /></div></h1>
				<div class="boxgeneral" style="width:628px;">
					<div class="flashslideshow">
                    <div id="videoshow"></div>
         <?php

if (isset($_POST['resetbtn']))
{
	$user = $_POST['user'];
	$email = $_POST['email'];
	if ($user)
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
if($numrows==1)
{
	$row = mysql_fetch_array($query);
	$dbemail = $row[2];
	if($email == $dbemail)
	{
		$pass = rand();
		$pass = md5($pass);
		$pass = substr($pass,0,10);
		
		mysql_query("UPDATE registration SET password='$pass' WHERE username='$email' ");
		$query= mysql_query("SELECT * FROM registration WHERE username='$email' AND password='$pass'");
		if ($numrows == 1)
		{
			$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
			$webmaster = "ishugoel@gmail.com";
			$headers= "From: anish<$webmaster>";
			$subject= "your new password";
			$message = "hello, your password is reset. your password is below. \n";
			$message .= "Password: $pass\n";
			ini_set("sendmail_from","ishugoel@gmail.com");
			 mail($email, $subject, $message, $headers);
			if(mail($email, $subject, $message, $headers)){
				echo $pass."<br />";
			echo"password has been reset. Email has been sent containing your new password. To change your password login with this password and then change it.";
			echo '<br><a href="loginf.php"><input type="submit" name="login" value="Go to login page" method="POST"></a><br><br>';	
				}
			else
			echo"An error occured and email is not sent to your id containing the new password";
			}
		else
		echo "An error occured and password was not reset";
		}
	else
	echo"you have entered the wrong email address";
	}
else
echo"email not found";
				}
			else 
			echo"please enter a valid email address";
			}
		else
		echo "please enter your email";
	}
		else
		echo "please enter your user name";
}
echo'<h2>Forgot Password </h2> <br>
A new password will be generated for you and sent to the email address<br>
associated with your account, all you have to do is enter your
username.<br><br>

<form action="forgotpass.php" method="POST">
<b>Username:</b> <input type="text" name="user" maxlength="30" value="">
<b>email:</b> <input type="text" name="email" maxlength="30" value="" method="POST">

<input type="submit" name="resetbtn" value="Get New Password" method="POST">
</form>';


?>
                    
          </div>	</div>
				
				
				<!--video-->
<h1><div class="title"><img src="images/recentvideos-title.gif" alt="" /></div></h1>
<div class="boxgeneral" style="width:627px;">
<div class="innerbox clearfix">
<div class="clearfloat" style="border-top:1px dotted #c1c1c1;"></div>
			<ul class="small" >
<li>
<dl>
<dd>
<div class="picbox-small">
<img src="videos/Most amazing dismissal in cricket ever!!Great work by Adam Gilchrist.jpg" alt="Most amazing dismissal in cricket ever!!Great work by Adam Gilchrist" title="Most amazing dismissal in cricket ever!!Great work by Adam Gilchrist" class="imgbox"  height="100" width="130"/>
</div><!--picbox-big-->
</dd>
<dd class="n"><span onClick="fun(1)">Most amazing dismissal in cricket ever!!Great work by Adam Gilchrist</span></dd>
<dd class="desc"></dd>
</dl>
</li>

 <li>
<dl>
<dd>
<div class="picbox-small">
<img src="videos/India Football Team FIFA World Cup 2022.jpg" alt="India Football Team FIFA World Cup 2022" title="India Football Team FIFA World Cup 2022" class="imgbox"  height="100" width="130"/>
</div><!--picbox-big-->
</dd>
<dd class="n"><span onClick="fun(5)">India Football Team FIFA World Cup 2022</span></dd>
<dd class="desc"></dd>
</dl>
</li>
<li>
<dl>
<dd>
<div class="picbox-small">
	<img src="videos/Top 20 Goals La Liga 2012.jpg" alt="Top 20 Goals La Liga 2012" title="Top 20 Goals La Liga 2012" class="imgbox"  height="100" width="130"/>
	</div><!--picbox-big-->
	</dd>
  <dd class="n"><span onClick="fun(6)"  >Top 20 Goals La Liga 2012</span></dd>
	<dd class="desc"></dd>
		</dl>
	</li>
    <li>
	<dl>
	<dd>
	<div class="picbox-small">
<img src="videos/F1 2011 - Red Bull - A lap of the Buddh International Circuit in India (Vettel).jpg" class="imgbox"  height="100" width="130"/>
	</div><!--picbox-big-->
	</dd>
   <dd class="n"><span onClick="fun(7)">Red Bull - A lap of the Buddh International Circuit in India</span></dd>
		<dd class="desc"></dd>
	</dl>
</li>

<div class="clearfloat" style="border-top:1px dotted #c1c1c1;"></div>
																


	<div class="clearfloat" style="border-top:1px dotted #c1c1c1;"></div>
																								
	</ul>
		
		
		
<div class="baselink clearfloat">
	<span style="float:right;margin-right:8px;"><a href="x/videos/">more videos</a></span>
	</div>				</div>
	<div class="innerboxbase"></div>
</div>
		
        </div>
			
		</div>
		
	<div id="rightcontent" style="position:static; ">
    
    <div class="rightwidebox">
						
 			
		<h1><div class="title"><img src="images/schedule-title.gif" alt="" /></div></h1>
				<div class="boxgeneral" style="width:270px;">
					<div class="innerbox-small clearfix">
						<ul class="rsidesmall">
				<div id="showschedule"></div>
                        </ul>
						<div class="baselink clearfloat" style="width:100%;_width:97%; border:none;">
						<span style="float:right;margin-right:8px;"><a href="x/schedule/">full tv schedule</a></span>
					</div>
					</div>
                    
					<div class="innerboxbase-small" ></div>
				</div>
				
				
								
				<!--latest news box-->
				<h1><div class="title"><img src="images/latestnews-title.gif" alt="" /></div></h1>
				<div class="boxgeneral" style="width:270px;">
					<div class="innerbox-small clearfix">
						<ul class="rsidesmall">
				
			     
					<div id="shownews"></div>
																
                     </ul>
					<div class="baselink clearfloat" style="width:100%;_width:97%; border:none;">
						<span style="float:right;margin-right:8px;"><a href="x/news/">more news</a></span>
					</div>
					</div>
					<div class="innerboxbase-small"></div>
				</div><!--boxgeneral-->

				<!--latest news box-->
                <h1><div class="title"><img src="images/today.gif" /></div></h1>
				
				<div class="boxgeneral" style="width:270px;">
					<div class="innerbox-small clearfix" style="text-align:center; padding-top:7px;">
						ncdscidsic
						<div class="baselink clearfloat" style="width:100%;_width:97%; border:none;">
						</div>
					</div><!--innerbox small-->
					<div class="innerboxbase-small"></div>
				</div><!--boxgeneral-->

			</div>
			
		</div>
	</div>
	<div class="clearfloat"></div>
				<ul class="footerlink">
					<li><a href="x/aboutus/">About Us</a></li>
	
					
					<li><a href="x/contactus.php">Contact Us</a></li>
					<li><a href="feedback.php">Feedback</a></li>
				</ul>				
				<span class="copyright">&copy 2012 jiit. All rights reserved</span>
				<div class="clearfloat"></div>
				<div style="color:#fff; padding:7px 0;">This Sports site is owned and/or  operated by the students of jiit. <a href="http://www.jiit.ac.in/" target="_blank" class="zeetel">www.jiit.ac.in</a></div>
				<div class="clearfloat"></div>
			</div>
		</div>
	</div>
	
	</div>
    
 
</body>
</html>



