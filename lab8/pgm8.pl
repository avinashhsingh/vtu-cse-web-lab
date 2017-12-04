#!/usr/bin/perl

print "content-type:text/html","\n\n";

use CGI':standard';
use DBI;
my $dbh=DBI->connect('DBI:mysql:student','apache','lamp') or die "can't connect to the database".DBI->errstr();

$name=param("name");
$age=param("age");

my $sth=$dbh->prepare("insert into user_info1 values('$name','$age')") or die "can't prepare query".$dbh->errstr();
$sth->execute();

my $sth=$dbh->prepare("select * from user_info1");
$sth->execute();


print "<u>User Information</u><br><br>";
print "<table border size=1>
	<tr>
	   <th>NAME</th>
	   <th>AGE</th>
	</tr>";
while(($name,$age)=$sth->fetchrow()) 
{
	print "<tr>
		<td>$name</td>
		<td>$age</td>
	</tr>";
}

print "</table>";
$sth->finish();
$dbh->disconnect();
exit(0);
