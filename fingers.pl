#!/usr/bin/perl

# Usage blah <target>
# Roelof Temmingh 2001/02
# Sensepost roelof@sensepost.com

sub do_finger
{
 $it=@_[0];
 @response=`finger $it\@@ARGV[0]`;
 print @response;
}

@types=(0,
	admin,
	system,
	user,
	guest,
	test,
	access,
	mail,
	nr,
	users,
	news,
	daemon,
	x,
	ftp,
	root,
	administrator,
	john,
	ben,
	james,
	mary,
	department,
	dep,
	depart,
	number,
	office,
	group,
	grp,
	none,
	blank,
	student,
	operator,);

foreach $go (@types) {
 &do_finger($go);
}

#sensepostdata fingers