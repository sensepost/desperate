#!/usr/bin/perl
$|=1;
# usage blah domainname dnsnamesfile
# Roelof Temmingh 2001/02
# Sensepost roelof@sensepost.com

open (IN,"@ARGV[1]") || die "Couldnt open names file\n";
while (<IN>){
 chomp;
 @tries[$i]=$_;
 $i++;
}

## lets quickly do a mx and zone
print "Zone transfer:\n";
@response=`host -l @ARGV[0]`;
print @response;

print "MX records:\n";
@response=`host -t mx @ARGV[0]`;
print @response;

## just plain
foreach $try (@tries){
 print "Trying for $try : ";
 @response=`host $try.@ARGV[0]`;
 print @response;
}

### append a "1"
foreach $try (@tries){
 $ntry=$try."1";
 print "Trying for $ntry : ";
 @response=`host $ntry.@ARGV[0]`;
 print @response;
}

### append a "2"
foreach $try (@tries){
 $mtry=$try."2";
 print "Trying for $mtry : ";
 @response=`host $mtry.@ARGV[0]`;
 print @response;
}          

### append a "-1"
foreach $try (@tries){
 print "Trying for $try-1 : ";
 @response=`host $try-1.@ARGV[0]`;
 print @response;
}

### append a "-2"
foreach $try (@tries){
 print "Trying for $try-2: ";
 @response=`host $try-2.@ARGV[0]`;
 print @response;
}
print "Complete\n";

#sensepostdata dnsbrute