<?php 
$no_day=60*60*24*30+time();
setcookie("visitdate",date("G:i:s a - m/d/y"),$no_day);
if(isset($_COOKIE["visitdate"]))
{
	$lastvisit=$_COOKIE["visitdate"];
	print "your last visit was-".$lastvisit;
}
else
{
	print "please set the coockie";
}
?>
