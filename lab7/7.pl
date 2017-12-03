#!/usr/bin/perl
print "content-type:text/html","\n\n";
($sec,$min,$hr)=localtime(time);
if($hr>12)
{
	$hr-=12;
	$ampm="PM";
}
else
{
	$ampm="AM";
}
if($hr==0)
{
	$hr=12;
}
$s=sprintf("%d:%d:%d %s",$hr,$min,$sec,$ampm);
print "<center>System time:$s</center><br>";
