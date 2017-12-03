#!/usr/bin/perl
print "content-type:text/html","\n\n";
$cf="/var/www/cgi-bin/count.txt";
if(open(FILE,"<".$cf))
{
	$count=<FILE>;
	close(FILE);
}
if(open(FILE,">".$cf))
{
	$count++;
	printf FILE $count;
	close(FILE);
}
print "<h3>Welcome, you are $count visitor</h3>";
exit(0);
