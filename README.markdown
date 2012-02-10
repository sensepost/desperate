#1. Name
Desperate
#2. Author
Roelof Temmingh
#3. License, version & release date
License : GPLv2  
Version : V0.1  
Release Date :2001/02
#4. Description
Desperate is a collection of tools used to extract usernames via EXPN and finger, and obtaining IP addresses via "brute force" DNS lookups. Contains lists of commonly used usernames and DNS names. Coded in PERL
#5. Usage
##5.1 Getting User names
###5.1.1 fingers

Does a whole lot of "fingers" on a host with commonly used usernames.
Real easy. Effectively used to extract usernames when a host has the
finger daemon running.

Usage:  
> perl fingers.pl < target >

###5.1.2 expn

Same as above - use it when the host's SMTP server allows you to do
a EXPN.

Usage:  
> perl expn.pl < target >

#5.2 Getting Host names
##5.2.1 dnsbrute

So you can't do a DNS zone transfer. Eish. This script will try to resolve
commonly known DNS names - e.g ns1.target.com.  

Usage: perl dnsbrute.pl < target_domain > < list_to_test >
#6. Requirements
Perl

