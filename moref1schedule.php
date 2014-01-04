<?php
session_start();
if (!isset($_SESSION['username'])) {
  header('Location:  loginf.php');
}
echo  $_SESSION['username'];
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>sportx homepage</title>
<meta name="Description" content="">
<meta name="Keywords" content="">

<link rel="stylesheet" type="text/css" href="reset.css" />
<link rel="stylesheet" type="text/css" href="screen.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="js/ready.js"></script>
<script type="text/javascript" src="js/ready1.js"></script>



<script src="showf1.js" type="text/javascript"></script>
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
<input type="text" name="search_for" id="search_for" style="position:relative;top:-130px;" value=""/><input type="image" src="images/gobutton.gif" style="position:relative ;top:-125px;left:2px;width:25px; height:15px; border:none;"/>
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
		</div>
        <!--menu-->	
        <script language="javascript">
	$(function() {
		$( "#datepicker" ).datepicker({
			showOn: "button",
			buttonImage: "/images/calendar-icon.gif",
			buttonImageOnly: true,
			dateFormat: 'yy-mm-dd',
			defaultDate: "2012-11-20",
			minDate: "2012-11-20",
			maxDate: "2012-11-26",
			hideIfNoPrevNext: true,
			onSelect : function(dateText, inst)  {
	document.location.href = 'http://www.tensports.com/schedule/?date='+dateText;
			},
			buttonText: 'Calendar'
		});
	});
</script>
<style>
.ui-datepicker-trigger {
	cursor:pointer; cursor:hand;
}
</style>
	
	<div id="midcontent">
		
		<div id="leftcontent">
			
			<div class="leftwidebox">		
								
				

				
				<h1><div class="title"><img src="images/schedule-title.gif" alt="" /></div></h1>
				<div class="boxgeneral" style="width:627px;">
				<div class="innerbox clearfix">

					
                    
                    
                    <div class="calendarcomponent">
						<ul>
<li style="width:155px;">
<span style="margin-left:30px;">
<input type="hidden" id="datepicker" value="" name="datepicker" style="cursor:pointer; cursor:hand;">
<img class="ui-datepicker-trigger" src="images/calendar-icon.gif" alt="Calendar" title="Calendar" onClick="todayDate()">
</span></li>
<li style="margin-top:10px;"><img src="images/cal-arrowleft.gif" alt="" onClick="previousDate()"/></li>
		<li><span  class="caldate" id="today"></span></li>
<li style="margin-top:10px;"><img src="images/cal-arrowright.gif" alt="" onClick="nextdayDate()" /></li>
</ul>
					</div><!--calendar icon-->						
					<div class="clearfloat"></div>
					<!--schedule chunk -->
                   
                        <div id="showmoreschedule"></div>
							
						<!--schedule chunk-->
					
			
            
            
            
            </div><!--innerbox-->
				<div class="innerboxbase"></div>
				</div><!--boxgeneral-->
				
				
			</div><!--leftwidebox-->
			
		</div><!--leftcontent-->
		
	<div id="rightcontent" style="position:static; ">
    
    <div class="rightwidebox">
						
 			
		<h1><div class="title"><img src="images/today.gif" /></div></h1>
				<div class="boxgeneral" style="width:270px;">
					<div class="innerbox-small clearfix">
						<ul class="rsidesmall">
				      <div id="showschedule"></div>
                        </ul>
						<div class="baselink clearfloat" style="width:100%;_width:97%; border:none;">
						
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
				</div>
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

<script>
var currentDay = new Date(); // Set up current day for today

function todayDate() {
var today=new Date(); // Get today's date
callCalendar(today);
currentDay = today;
}

function nextdayDate() {
var next = new Date(currentDay.getTime() + 24*60*60*1000); // Get next day date
callCalendar(next);
currentDay = next;
}

function previousDate() {
var previous = new Date(currentDay.getTime() - 24*60*60*1000); // Get tomorrow date
callCalendar(previous);
currentDay = previous;
}

function callCalendar(x) {
var mm=x.getMonth(); // Get today's month
var dd=x.getDate(); // Get today's day
var yy=x.getFullYear(); // Get today's year
var dt=1; // Output date
var hh=1; // Output header
var ll=3; // Output Lives of Saints
var tt=0; // Do not output Troparions
var ss=1; // Output Daily Scripture Reading
var day=x.getDay()
loadCalendar2(mm,dd,yy,dt,hh,ll,tt,ss,day);
}

function loadCalendar2(mm,dd,yy,dt,hh,ll,tt,ss,day)
{
	var dayarray=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
var montharray=new Array("January","February","March","April","May","June","July","August","September","October","November","December")
date = "<font>"+dayarray[day]+", "+montharray[mm]+" "+dd+", "+yy+"</font>"
var str=yy + "-" + (mm+1) + "-" + dd

	ShowSchedule();
	showmoref1schedule(str);	
}

function ShowSchedule() 
{
document.getElementById("today").innerHTML = date;
}

</script>    
 
</body>
</html>
