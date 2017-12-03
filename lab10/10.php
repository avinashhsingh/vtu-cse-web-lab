<?php
session_start();
session_register("count");
if(!isset($_SESSION))
{
	$_SESSION["count"]=0;
	echo "<p>Counter Intailized</p>\n";
}
else
{
	$_SESSION["count"]++;
}
print "<i>The page has been viewed</i>-".$_SESSION[count]."<i>times.</i>";
?>
