#!/usr/local/bin/perl
use Getopt::Std;
use Socket;

@usernames=(
'root',
'guest',
'abuse',
'info',
'postmaster',
'webmaster',
'toor',
'pppadmin',
'ppp',
'dummy',
'demo',
'admin',
'test',
'test1',
'test2',
'test01',
'test02',
'mail',
'sales',
'user',
'users',
'user1',
'access',
'ftp',
'http',
'httpd',
'sybase',
'oracle',
'sql',
'mysql',
'msql',
'operator',
'hfocus',
'squid',
'op',
'ops',
'support',
'engineering',
'eng',
'upload',
'content',
'provider',
'providers',
'dba',
'r00t',
'daemon',
'adm',
'pop',
'boss',
'mail',
'cache',
'uucp',
'marketing'
);

 $serv=@ARGV[0];
 $port=25;

 $in_addr = (gethostbyname($serv))[4] || die("Error1: $!\n");
 $paddr = sockaddr_in($port, $in_addr) || die ("Error2: $!\n");
 $proto = getprotobyname('tcp') || die("Error: $!\n");
 socket(S, PF_INET, SOCK_STREAM, $proto) || die("Error3: $!\n");
 connect(S, $paddr) || die("Error4: $!\n");
 select(S); $| = 1; select(STDOUT);
 $duh=<S>; print "$duh\n\n";

foreach $user (@usernames){
 print "==$user:\n";
 $sendstring="expn ".$user."\n";
 print S $sendstring;
 $res=<S>;
 print "$res";
 sleep 1;
}
