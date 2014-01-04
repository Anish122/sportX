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
<div style="position:relative; left:800px; top:15px;"> <a href="loginf.php"><h2 style="color:#0FF; size:30px;">LogIn</h2></a> </a><a href="signin.html"><h2 style="color:#9F9;">SignIn</h2></a></div>				
<div >
<a href="homepage.php" style="position:relative; left:25px; top:-45px;"><img src="images/sportx.gif" height="90" width="130" /></a>
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
				
				<!--in the spotlight box-->
				<h1><div class="title"><img src="images/feedback-title.gif" alt="" /></div></h1>
				<div class="boxgeneral" style="width:627px;">
				<div class="innerbox clearfix">
				  
				<div class="myform"> <span align="center"><b></b></span>
<form style="border-bottom:none;" name="feedback_frm" id="feedback_frm" method="POST" onsubmit="return validate_feedback();" action="insertfeedback.php">
										<fieldset>

										<label>Name: </label><input type="text" class="inputdef" name="name" id="first_name">
<div id="first_error" class="error" style="display:none;">Please enter your first name</div>
										<br />
										
										<div class="halfspacer"></div>

<label>Email: </label><input type="text" class="inputdef" id="email" name="email">
<div id="email_error" style="display:none;" class="error">Please enter your email id</div>
										<br />

										<div class="halfspacer"></div>
										
<label>Gender: </label><input type="radio" name="gender" value="M" checked><span  class="radiotxt">Male</span> &nbsp;<input type="radio" name="gender" value="F" selected><span  class="radiotxt">Female</span>
										<div class="error" style="display:none" id="gender_error">Please select gender</div><br />
										<div class="halfspacer"></div>																					
										<label>Country: </label>
										<select name="country" id="country">
											<option value="">Select Country</option>
											<option value='Afghanistan' >Afghanistan</option><option value='Albania' >Albania</option><option value='Algeria' >Algeria</option><option value='American Samoa' >American Samoa</option><option value='Andorra' >Andorra</option><option value='Angola' >Angola</option><option value='Anguilla' >Anguilla</option><option value='Antarctica' >Antarctica</option><option value='Antigua and Barbuda' >Antigua and Barbuda</option><option value='Argentina' >Argentina</option><option value='Armenia' >Armenia</option><option value='Aruba' >Aruba</option><option value='Australia' >Australia</option><option value='Austria' >Austria</option><option value='Azerbaijan' >Azerbaijan</option><option value='Bahamas' >Bahamas</option><option value='Bahrain' >Bahrain</option><option value='Bangladesh' >Bangladesh</option><option value='Barbados' >Barbados</option><option value='Belarus' >Belarus</option><option value='Belgium' >Belgium</option><option value='Belize' >Belize</option><option value='Benin' >Benin</option><option value='Bermuda' >Bermuda</option><option value='Bhutan' >Bhutan</option><option value='Bolivia' >Bolivia</option><option value='Bosnia and Herzegovina' >Bosnia and Herzegovina</option><option value='Botswana' >Botswana</option><option value='Bouvet Island' >Bouvet Island</option><option value='Brazil' >Brazil</option><option value='British Indian Ocean Territory' >British Indian Ocean Territory</option><option value='Brunei' >Brunei</option><option value='Bulgaria' >Bulgaria</option><option value='Burkina Faso' >Burkina Faso</option><option value='Burundi' >Burundi</option><option value='Cambodia' >Cambodia</option><option value='Cameroon' >Cameroon</option><option value='Canada' >Canada</option><option value='Cape Verde' >Cape Verde</option><option value='Cayman Islands' >Cayman Islands</option><option value='Central African Republic' >Central African Republic</option><option value='Chad' >Chad</option><option value='Chile' >Chile</option><option value='China' >China</option><option value='Christmas Island' >Christmas Island</option><option value='Cocos (Keeling) Islands' >Cocos (Keeling) Islands</option><option value='Colombia' >Colombia</option><option value='Comoros' >Comoros</option><option value='Congo' >Congo</option><option value='Congo, The Democratic Republic of the' >Congo, The Democratic Republic of the</option><option value='Cook Islands' >Cook Islands</option><option value='Costa Rica' >Costa Rica</option><option value='Côte d’Ivoire' >Côte d’Ivoire</option><option value='Croatia' >Croatia</option><option value='Cuba' >Cuba</option><option value='Cyprus' >Cyprus</option><option value='Czech Republic' >Czech Republic</option><option value='Denmark' >Denmark</option><option value='Djibouti' >Djibouti</option><option value='Dominica' >Dominica</option><option value='Dominican Republic' >Dominican Republic</option><option value='East Timor' >East Timor</option><option value='Ecuador' >Ecuador</option><option value='Egypt' >Egypt</option><option value='El Salvador' >El Salvador</option><option value='Equatorial Guinea' >Equatorial Guinea</option><option value='Eritrea' >Eritrea</option><option value='Estonia' >Estonia</option><option value='Ethiopia' >Ethiopia</option><option value='Falkland Islands' >Falkland Islands</option><option value='Faroe Islands' >Faroe Islands</option><option value='Fiji Islands' >Fiji Islands</option><option value='Finland' >Finland</option><option value='France' >France</option><option value='French Guiana' >French Guiana</option><option value='French Polynesia' >French Polynesia</option><option value='French Southern territories' >French Southern territories</option><option value='Gabon' >Gabon</option><option value='Gambia' >Gambia</option><option value='Georgia' >Georgia</option><option value='Germany' >Germany</option><option value='Ghana' >Ghana</option><option value='Gibraltar' >Gibraltar</option><option value='Greece' >Greece</option><option value='Greenland' >Greenland</option><option value='Grenada' >Grenada</option><option value='Guadeloupe' >Guadeloupe</option><option value='Guam' >Guam</option><option value='Guatemala' >Guatemala</option><option value='Guinea' >Guinea</option><option value='Guinea-Bissau' >Guinea-Bissau</option><option value='Guyana' >Guyana</option><option value='Haiti' >Haiti</option><option value='Heard Island and McDonald Islands' >Heard Island and McDonald Islands</option><option value='Holy See (Vatican City State)' >Holy See (Vatican City State)</option><option value='Honduras' >Honduras</option><option value='Hong Kong' >Hong Kong</option><option value='Hungary' >Hungary</option><option value='Iceland' >Iceland</option><option value='India' selected>India</option><option value='Indonesia' >Indonesia</option><option value='Iran' >Iran</option><option value='Iraq' >Iraq</option><option value='Ireland' >Ireland</option><option value='Israel' >Israel</option><option value='Italy' >Italy</option><option value='Jamaica' >Jamaica</option><option value='Japan' >Japan</option><option value='Jordan' >Jordan</option><option value='Kazakstan' >Kazakstan</option><option value='Kenya' >Kenya</option><option value='Kiribati' >Kiribati</option><option value='Kuwait' >Kuwait</option><option value='Kyrgyzstan' >Kyrgyzstan</option><option value='Laos' >Laos</option><option value='Latvia' >Latvia</option><option value='Lebanon' >Lebanon</option><option value='Lesotho' >Lesotho</option><option value='Liberia' >Liberia</option><option value='Libyan Arab Jamahiriya' >Libyan Arab Jamahiriya</option><option value='Liechtenstein' >Liechtenstein</option><option value='Lithuania' >Lithuania</option><option value='Luxembourg' >Luxembourg</option><option value='Macao' >Macao</option><option value='Macedonia' >Macedonia</option><option value='Madagascar' >Madagascar</option><option value='Malawi' >Malawi</option><option value='Malaysia' >Malaysia</option><option value='Maldives' >Maldives</option><option value='Mali' >Mali</option><option value='Malta' >Malta</option><option value='Marshall Islands' >Marshall Islands</option><option value='Martinique' >Martinique</option><option value='Mauritania' >Mauritania</option><option value='Mauritius' >Mauritius</option><option value='Mayotte' >Mayotte</option><option value='Mexico' >Mexico</option><option value='Micronesia, Federated States of' >Micronesia, Federated States of</option><option value='Moldova' >Moldova</option><option value='Monaco' >Monaco</option><option value='Mongolia' >Mongolia</option><option value='Montserrat' >Montserrat</option><option value='Morocco' >Morocco</option><option value='Mozambique' >Mozambique</option><option value='Myanmar' >Myanmar</option><option value='Namibia' >Namibia</option><option value='Nauru' >Nauru</option><option value='Nepal' >Nepal</option><option value='Netherlands' >Netherlands</option><option value='Netherlands Antilles' >Netherlands Antilles</option><option value='New Caledonia' >New Caledonia</option><option value='New Zealand' >New Zealand</option><option value='Nicaragua' >Nicaragua</option><option value='Niger' >Niger</option><option value='Nigeria' >Nigeria</option><option value='Niue' >Niue</option><option value='Norfolk Island' >Norfolk Island</option><option value='North Korea' >North Korea</option><option value='Northern Mariana Islands' >Northern Mariana Islands</option><option value='Norway' >Norway</option><option value='Oman' >Oman</option><option value='Pakistan' >Pakistan</option><option value='Palau' >Palau</option><option value='Palestine' >Palestine</option><option value='Panama' >Panama</option><option value='Papua New Guinea' >Papua New Guinea</option><option value='Paraguay' >Paraguay</option><option value='Peru' >Peru</option><option value='Philippines' >Philippines</option><option value='Pitcairn' >Pitcairn</option><option value='Poland' >Poland</option><option value='Portugal' >Portugal</option><option value='Puerto Rico' >Puerto Rico</option><option value='Qatar' >Qatar</option><option value='R' >R</option><option value='Romania' >Romania</option><option value='Russian Federation' >Russian Federation</option><option value='Rwanda' >Rwanda</option><option value='Saint Helena' >Saint Helena</option><option value='Saint Kitts and Nevis' >Saint Kitts and Nevis</option><option value='Saint Lucia' >Saint Lucia</option><option value='Saint Pierre and Miquelon' >Saint Pierre and Miquelon</option><option value='Saint Vincent and the Grenadines' >Saint Vincent and the Grenadines</option><option value='Samoa' >Samoa</option><option value='San Marino' >San Marino</option><option value='Sao Tome and Principe' >Sao Tome and Principe</option><option value='Saudi Arabia' >Saudi Arabia</option><option value='Senegal' >Senegal</option><option value='Seychelles' >Seychelles</option><option value='Sierra Leone' >Sierra Leone</option><option value='Singapore' >Singapore</option><option value='Slovakia' >Slovakia</option><option value='Slovenia' >Slovenia</option><option value='Solomon Islands' >Solomon Islands</option><option value='Somalia' >Somalia</option><option value='South Africa' >South Africa</option><option value='South Georgia and the South Sandwich Islands' >South Georgia and the South Sandwich Islands</option><option value='South Korea' >South Korea</option><option value='Spain' >Spain</option><option value='Sri Lanka' >Sri Lanka</option><option value='Sudan' >Sudan</option><option value='Suriname' >Suriname</option><option value='Svalbard and Jan Mayen' >Svalbard and Jan Mayen</option><option value='Swaziland' >Swaziland</option><option value='Sweden' >Sweden</option><option value='Switzerland' >Switzerland</option><option value='Syria' >Syria</option><option value='Taiwan' >Taiwan</option><option value='Tajikistan' >Tajikistan</option><option value='Tanzania' >Tanzania</option><option value='Thailand' >Thailand</option><option value='Togo' >Togo</option><option value='Tokelau' >Tokelau</option><option value='Tonga' >Tonga</option><option value='Trinidad and Tobago' >Trinidad and Tobago</option><option value='Tunisia' >Tunisia</option><option value='Turkey' >Turkey</option><option value='Turkmenistan' >Turkmenistan</option><option value='Turks and Caicos Islands' >Turks and Caicos Islands</option><option value='Tuvalu' >Tuvalu</option><option value='Uganda' >Uganda</option><option value='Ukraine' >Ukraine</option><option value='United Arab Emirates' >United Arab Emirates</option><option value='United Kingdom' >United Kingdom</option><option value='United States' >United States</option><option value='United States Minor Outlying Islands' >United States Minor Outlying Islands</option><option value='Uruguay' >Uruguay</option><option value='Uzbekistan' >Uzbekistan</option><option value='Vanuatu' >Vanuatu</option><option value='Venezuela' >Venezuela</option><option value='Vietnam' >Vietnam</option><option value='Virgin Islands, British' >Virgin Islands, British</option><option value='Virgin Islands, U.S.' >Virgin Islands, U.S.</option><option value='Wallis and Futuna' >Wallis and Futuna</option><option value='Western Sahara' >Western Sahara</option><option value='Yemen' >Yemen</option><option value='Yugoslavia' >Yugoslavia</option><option value='Zambia' >Zambia</option><option value='Zimbabwe' >Zimbabwe</option>										</select>
																					<div class="error" style="display:none;" id="country_error">Please select country</div>
										<br />
										<div class="halfspacer"></div>	
										
										<label>Subject: </label><input type="text" class="inputdef" name="subject" id="subject">
																					<div id="subject_error" class="error" style="display:none;">Please enter the subject</div>
										<br />
										<div class="halfspacer"></div>

										<label>Message: </label><textarea rows="5" cols="30" name="message" id="message" onKeyDown="textCounter(this.form.message,this.form.remLen1,500);" onKeyUp="textCounter(this.form.message,this.form.remLen1,500);" onkeypress="show_limit();"></textarea><br />
		<div style="position:relative; right:40px; bottom:40px;"	>							<label>Characters left:</label> <input readonly type=text name="remLen1" size=3 class="blackText1" maxlength=3 value="500"></div>
 <div class="error" style="display:none; position:relative; bottom:95px;" id="message_error" >Please post message</div>
										<br />
										<div class="halfspacer"></div>
										
	                        <div style="position:relative; right:-230px; bottom:80px;"	>						<label>&nbsp;</label><input type="submit" name="send" value="Submit" class="button">&nbsp;<input type="reset" value="Cancel" class="button" onclick="return reset();">
										
										</fieldset>
								
									</form>
									</div><!--myform-->					
				</div><!--innerbox-->
				
				</div><!--boxgeneral-->

        </div>
			
		</div>
		
	<div id="rightcontent" style="position:static; ">
    
    <div class="rightwidebox">
						
 			
		<h1><div class="title"><img src="images/today.gif" /></div></h1>
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
    
 
</body>
</html>
