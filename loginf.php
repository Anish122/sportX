<?php
// Inialize session
session_start();
// Check, if user is already login, then jump to secured page
if (isset($_SESSION['username'])) {
header('Location: homepage2.php');
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>sportx login</title>
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
         <script type="text/javascript">

 
  function checkForm(form)
  {
    if(form.username.value == "") {
      alert("Error: Username cannot be blank!");
      form.username.focus();
      return false;
    }
     if(form.password.value == "") {
      alert("Error: Username cannot be blank!");
      form.password.focus();
      return false;
    }
  }

</script>

<div style="float:right; position:relative; right:200px;">
<form action="searchlogin.php" method="POST" onsubmit="return checkForm(this);">
<table align="left" border="0" cellspacing="0" cellpadding="3">
<tr><td ><div style=" position:relative; color:#099; font-family:'Courier New', Courier, monospace; font-size:20px;">Username:</div></td><td><input type="text" id="username" name="username" required placeholder="Enter a valid email address" maxlength="30" value=""></td><td></td></tr>
<tr><td><div style=" position:relative; color:#099; font-family:'Courier New', Courier, monospace; font-size:20px;">Password:</div></td><td><input type="password" id="password" name="password" required placeholder="Enter a password" maxlength="30" value=""></td><td></td></tr>
<tr><td colspan="2" align="left">

<input type="hidden" name="sublogin" value="1">
<button class="n" type="submit" data-text="Processing…">
LOG IN
</button></td></tr>

<tr><td colspan="2" align="left"><br><font size="2">[<a href="forgotpass.php">forgot Password</a>]

</button>]</font></td><td align="right"></td></tr>
<tr><td colspan="2" align="left"><br>Not registered? <a href="signin.html">Sign-Up!</a></td></tr>
</table>
</form>
</div>
                    
          </div>	</div>
				
				
				<!--video-->





	<div class="innerboxbase"></div>

		
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
	<div class="footer" >
		<div class="endbar"></div>
		<div class="bottomblackstrip">
			<div class="footercontent" style="width:800px;">
				<div class="logoCentre"> <span style="position:relative; top:5px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
			</div><!--footercontent-->
		</div><!--bottomblackstrip-->
		
		<div class="footerbase">
			<div class="footercontent" style="width:9800px;">
				
				
				<div class="socialico1">
					<ul>
						<li><a href="pagelink" target="_blank"><img src="images/fb-ico.gif" alt="" /></a></li>
						
					</ul>
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
