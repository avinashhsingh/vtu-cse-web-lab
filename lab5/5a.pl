#!/usr/bin/perl
use CGI':standard';
print "content-type:text/html","\n\n";
print "<html>\n";
print "<head><title>About the server</title></head>\n";
print "<body>\n";
print "<h1>About the Server</h1>\n";
print "<hr>";
print "SERVER NAME :",$ENV{'SERVER_NAME'},"<br>";
print "RUNNING ON PORT :",$ENV{'SERVER_PORT'},"<br>";
print "CGI REVISION :",$ENV{'GATEWAY_INTERFACE'},"<br>";
print "SERVER_SOFTWARE :",$ENV{'SERVER_SOFTWARE'},"<br>";
print "<hr>\n";
print "</body></html>\n";
exit(0);

