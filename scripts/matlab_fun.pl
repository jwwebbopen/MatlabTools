#!/usr/bin/env perl

#------------------------------------------------------------------
# vim:tw=160:softtabstop=8:shiftwidth=8:cindent:syn=perl:
#------------------------------------------------------------------
#
# matlab_fun.pl
#
#------------------------------------------------------------------
#
# created on:	03/23/2017 
# created by:	jwwebb
# last edit on:	$DateTime: $ 
# last edit by:	$Author: $
# revision:     $Revision: $
# comments:     Generated
#
#------------------------------------------------------------------
# Revision List:
#
#		1.0	04/01/2007	Initial release
#		1.1	03/23/2017	Update header.
# 
#	Please report bugs, errors, etc.
#------------------------------------------------------------------
# Matlab Function Template
#
#	This utility is intended to make creating new Matlab functions 
#	easier. This script will create a new text file called 
#	"new_function_name.m" when you type the following command:
#	
#	    [jwwebb@machine ../mymatlab]
#		$ matlab_fun.pl new_function_name.m
#		
#	The script will generate the empty Matlab template for you. 
#	Note:  "new_function_name.m" is the name of the new Matlab file 
#	and can be anything you like.
#  
#------------------------------------------------------------------

#	Retrieve command line argument
#

use strict;

my $file = $ARGV[0];

# check to see if the user entered a file name.
dienice("syntax: [perl] matlab_mod.pl new file\n") if ($file eq "");

# check to make sure that the file doesn't exist.
dienice("Oops! A file called '$file' already exists.\n") if -e $file;
open(my $inF, ">", $file);

# Strip the .v from the file name and use for the module name:
$file =~ s/\.m$//;
# Make Date int MM/DD/YYYY
my $year      = 0;
my $month     = 0;
my $day       = 0;
($day, $month, $year) = (localtime)[3,4,5];

# Grab username from PC:
my $author= "$^O user";
if ($^O =~ /mswin/i)
{ 
  $author= $ENV{USERNAME} if defined $ENV{USERNAME};
}
else
{ 
  $author = getlogin();
}

my $newfile = $file;
$newfile =~ tr/[a-z]/[A-Z]/;

#Module Template:
printf($inF "function out = $file(in1,in2,in3);\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "%\n");
printf($inF "%\% $newfile Function\n");
printf($inF "%\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "%\n");
printf($inF "%\%My Company Confidential Copyright © %04d Research Department\n", $year+1900);
printf($inF "%\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "%\n");
printf($inF "%\% created on:\t%02d/%02d/%04d \n", $month+1, $day, $year+1900);
printf($inF "%\% created by:	$author\n");
printf($inF "%\% last edit on:\t%02d/%02d/%04d \n", $month+1, $day, $year+1900);
printf($inF "%\% last edit by:	$author\n");
printf($inF "%\% revision:	001\n");
printf($inF "%\% comments:\t\n");
printf($inF "%\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "%\n");
printf($inF "%\% This matlab function implements ...\n");
printf($inF "%\n");
printf($inF "%\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "\n");
printf($inF "%\% Enter your customized matlab commands here\n");
printf($inF "\n");
printf($inF "\n");
printf($inF "\n");
printf($inF "\n");
close(inF);
print("\n");
print("The script has finished successfully! You can now use $file.m.");
print("\n");
print("\n");
exit;

#------------------------------------------------------------------------------ 
# Generic Error and Exit routine 
#------------------------------------------------------------------------------

sub dienice {
	my($errmsg) = @_;
	print"$errmsg\n";
	exit;
}


