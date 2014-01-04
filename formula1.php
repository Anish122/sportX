<?php
session_start();
if (!isset($_SESSION['username'])) {
  header('Location:  loginf.php');
}
echo  $_SESSION['username'];
?>
<?php include('crawl/f1news.php'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>sportx cricket</title>
<meta name="Description" content="">
<meta name="Keywords" content="">

<link rel="stylesheet" type="text/css" href="reset.css" />
<link rel="stylesheet" type="text/css" href="screen.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>

<script src="f1driver.js" type="text/javascript"></script>
<script src="driverinfo.js" type="text/javascript"></script>
<script  src="js/ready.js" type="text/javascript" ></script>
<script src="js/ready1.js" type="text/javascript" ></script>
<script src="scheduledivider.js" type="text/javascript"></script>
<script src="showf1.js" type="text/javascript"></script>
<script src="feedback.js" type="text/javascript"></script>

</head>

<body onLoad="showschedule();shownews();showname();">
<div id="wrapper" class="clearfix">
		<div align="center" style="padding-top:4px; float:right">
     
        <img src="images/animation/f1.gif" alt="formula1" style=" position:relative;left:-50px;"></div>
       
		<div id="headerwrap">
        
			<div id="header">
            
				<div id="topbannerframe">
			
             				</div>
<div style="position:relative; left:800px; top:30px; color:#0F0;">You are Logged In, <a href="logout.php">Log Out</a><a href="changepass.php"><h2 style="color:#0FF; size:30px;">change password</h2></a> </div>	<div id="showname"></div>			
<div >
<a href="homepage2.php" style="position:relative; left:25px; top:-45px;"><img src="images/sportx.gif" height="90" width="130" /></a>
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
<input type="text" name="search_for" id="search_for" style="position:relative;top:-110px;" value=""/><input type="image" src="images/gobutton.gif" style="position:relative ;top:-105px;left:2px;width:25px; height:15px; border:none;"/>
					</form>
				</div>
				
			</div>
			
		</div>

<div class="menu">
<div id="smoothmenu1" class="ddsmoothmenu">
<ul>
<li><a href="homepage2.php" class="topnav topnav-home">home</a></li>
<li><a href="moref1schedule.php" class="topnav topnav-schedule ">schedule</a></li>
				
<li><a href="moref1news.php" class="topnav topnav-news ">news</a></li>
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
				<h1><div class="title"><img src="images/select-team.png" alt="" / > 
                <form action="" style="position:relative; bottom:30px; left:100px;">
				<select name="Team" id="Team"  onchange="showTeam(this.value)">
											<option value="">Select Team</option>
											<option value='1' >Red Bull Racing</option>
                                            <option value='2' >McLaren</option>
                                            <option value='3' >Ferrari</option>
                                            <option value='4' >Lotus</option>
                                            <option value='5' >Mercedes</option>
                                            <option value='6' >Sauber</option>
                                            <option value='7' >Force India</option>
                                            <option value='8' >Williams</option>
                                            <option value='9' >Torro Rosso</option>
                                            <option value='10' >Marussia</option>
                                            <option value='11' >Caterham</option>
                                            <option value='12' >Hrt</option>
                                            
                                            </select>
                </form>
                
                
                </div></h1>
				
				
				<div class="boxgeneral" style="width:628px;">
					<div class="flashslideshow">
                     <div><b>Select the Team and driver's name will be listed here.</b></div>
                 
               <div id="showdri" style="color:#7a7a7a;"></div>
               
               <div id="showdriinfo"></div>
               
               
                    
                 </div><!--flashslideshow-->	</div><!--boxgeneral-->
				
				
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
						<span style="float:right;margin-right:8px;"><a href="moref1schedule.php">full tv schedule</a></span>
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
						<span style="float:right;margin-right:8px;"><a href="moref1news.php">more news</a></span>
					</div>
					</div>
					<div class="innerboxbase-small"></div>
				</div><!--boxgeneral-->

				<!--latest news box-->
    <!--            <h1><div class="title"><img src="images/today.gif" /></div></h1>
				
				<div class="boxgeneral" style="width:270px;">
					<div class="innerbox-small clearfix" style="text-align:center; padding-top:7px;">
						nkdjsnnksn
						<div class="baselink clearfloat" style="width:100%;_width:97%; border:none;">
						</div>
					</div>
					<div class="innerboxbase-small"></div>
				</div>-->

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
