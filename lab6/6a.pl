#!/usr/bin/perl
use CGI':standard';
print "content-type:text/html","\n\n";
my@msg=("Good Morning","Hello","Welcome");
$input=param("username");
$i=int rand scalar @msg;
print "Hi...$input<br>Message:",$msg[$i];
