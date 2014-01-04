// JavaScript Document
ddsmoothmenu.init({
	mainmenuid: "smoothmenu1", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

function refresh_page(page_number, page_type){

	if(page_type == 'videos'){
		var seriesid = $('#seriesid').val();
		document.location.href="http://localhost/project/"+page_type+"/?page="+page_number+"&seriesid="+seriesid;
	}else{

	}
}

function refersh_search(page_number, search_type, searchfor){
	var sort_by = $('#sort_by').val();
	document.location.href="http://localhost/project/search/?page="+page_number+"&search_type="+search_type+"&search_for="+searchfor+"&sort_by="+sort_by;
}
function reset(){
	$('#first_name').val() = '';
	$('#first_error').hide();
	$('#email').val() = '';
	$('#email_error').hide();
	$('#country').val() = '';
	$('#country_error').hide();
	$('#subject').val() = '';
	$('#subject_error').hide();
	$('#message').val() = '';
	$('#message_error').hide();
	return false;
}

function validate_feedback(){
	
	if($('#first_name').val() == ''){
		//document.getElementById('first_error').style.display = '';
		$('#first_error').show();
		$('#first_error').focus();
		return false;
	}else if($('#email').val() == ''){
		$('#email_error').show();
		$('#first_error').hide();
		$('#email_error').focus();
		return false;
	}else if($('#email').val() != '' && emailCheck($('#email').val()) == 'false'){
		$('#first_error').hide();
		$('#email_error').html('Please enter valid email');
		$('#email_error').show();
		$('#email_error').focus();
		return false;

	}else if($('#country').val() == ''){
		$('#first_error').hide();
		$('#email_error').hide();
		$('#country_error').show();
		$('#country_error').focus();
		return false;
	}else if($('#subject').val() == ''){
		$('#first_error').hide();
		$('#email_error').hide();
		$('#country_error').hide();
		$('#subject_error').show();
		$('#subject_error').focus();
		return false;
	}else if($('#message').val() == ''){
		$('#country_error').hide();
		$('#first_error').hide();
		$('#email_error').hide();
		$('#subject_error').hide();
		$('#message_error').show();
		$('#message_error').focus();
		return false;
	}
	return true;
}

function emailCheck(str) {

	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){ 
	   return 'false';
	}

	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){  
	    return 'false';
	}

	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){			
	    return 'false';
	}

	if (str.indexOf(at,(lat+1))!=-1){			
	   return 'false';
	}

	if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
	   return 'false';
	}

	if (str.indexOf(dot,(lat+2))==-1){			
	   return 'false';
	}
		
	if (str.indexOf(" ")!=-1){		  
		return 'false';
	}
 	return 'trues';;					
}

function show_limit() {
	if($('#message').val().length == 500) {
		$('#message_error').html('Maximum limit exceeded');
		$('#message_error').show();
		$('#message_error').focus();
	} else if($('#message').val().length  < 500) {
		$('#message_error').html('');
		$('#message_error').show();
		$('#message_error').focus();
	}
}

function textCounter(field, countfield, maxlimit){	 
	if (field.value.length > maxlimit) {
		field.value = field.value.substring(0, maxlimit);
	} else {
		countfield.value = maxlimit - field.value.length;
	}
}

function search(){
	if($('#search_for').val() == ''){
		alert('Please enter keyword');
		return false;
	}

	return true;
}

 function show(id) {
			$('#'+id).show();
		}
		
        function hide(id) {
			$('#'+id).hide();
		}
		
		
		// JavaScript Document
/*function showfeedbackcountry(str)
{
var xmlhttp;    
if (str=="")
  {
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    
    }
  }
xmlhttp.open("GET","insertfeedback.php?q="+str,true);
xmlhttp.send();
}*/
