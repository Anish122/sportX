<html>
<head>

</head>
<body >

<?php 
$pro=mysql_connect("localhost","root","");
if (!$pro)
{
  die('Could not connect: ' . mysql_error());
}
$date1 =date("Y-m-d");
mysql_select_db("minor",$pro);
mysql_query("DELETE FROM `cnews` WHERE `newsdate`='".$date1."'");
mysql_close($pro);

include('simple_html_dom.php');
main();

function scraping_URL($url) {
    $html = file_get_html($url);
    // get title
//    foreach ($html->find('p') as $sourceurl) {
//    echo $sourceurl->innertext . "<br />";
//    }
for($i=75;$i<=82;$i++)
{
    	$ret[$i] = $html->find('li',$i)->plaintext;
		
	
	$result=$ret[$i];
	insert($result);

}
    // clean up memory
    $html->clear();
    unset($html);
	//    return $ret;
}
function insert($result)
{

	$pro=mysql_connect("localhost","root","");
if (!$pro)
{
  die('Could not connect: ' . mysql_error());
}
$date1 =date("Y-m-d");
mysql_select_db("minor",$pro);

mysql_query("INSERT INTO cnews (newsname, newsdate, newsarticle) VALUES ( '".$result."' ,'".$date1."' ,'cvdfv')");
mysql_close($pro);
}

// -----------------------------------------------------------------------------
// test it!

 function main()
{
	
set_time_limit(0); 
error_reporting(0);
			for($i=0;$i<1;$i++)
			{
				$ph1='http://zeenews.india.com/sports/cricket/index.html';
				scraping_URL($ph1);
				
			}
//			foreach($ret as $k=>$v)

//    					echo '$a[]="'.$v.'";<br>';
			
			//$file= createURL($phone);
			//$content=file_get_contents($file);
			//file_put_contents("harshit.txt",$content);
		
//fclose($ph);
}
?>
</body>
</html>