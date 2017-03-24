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
#		1.0	12/30/2004	Initial release.
#		1.1 02/23/2005  Fixed Header bug.
#		1.2 07/07/2006  Updated header to automatically the year.
#       1.3 04/01/2007  Changed company header.
#       1.4	03/23/2017	Update header.
#		
#	Please report bugs, errors, etc.
#------------------------------------------------------------------
# Matlab Module Template
#
#	This utility is intended to make creating new Matlab modules 
#	easier. This script will create a new text file called 
#	"new_module_name.m" when you type the following command:
#	
#	    [jwwebb@machine ../mymatlab]
#		$ matlab_mod.pl new_module_name.m
#		
#	The script will generate the empty Matlab template for you. 
#	Note:  "new_module_name.m" is the name of the new Matlab file 
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
#Module Template:

printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "%\n");
printf($inF "%\% $file.m script\n");
printf($inF "%\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "%\n");
printf($inF "%\% My Company Confidential Copyright © %04d Research Department\n", $year+1900);
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
printf($inF "% //Project// (//Number//)\n");
printf($inF "%\n");
printf($inF "%\% This matlab script implements ...\n");
printf($inF "%\n");
printf($inF "%\% This design performs the following functions:\n");
printf($inF "%\n");
printf($inF "%\t// enter functions here;\n");
printf($inF "%\n");
printf($inF "%\% The sub-scripts included in this design are:\n");
printf($inF "%\n");
printf($inF "%\t// enter sub-modules here;\n");
printf($inF "%\n");
printf($inF "%\n");
printf($inF "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
printf($inF "\n");
printf($inF "clear;clc;close all;\n");
printf($inF "\n");
printf($inF "%\% Enter your customized matlab commands here\n");
printf($inF "\n");
printf($inF "\n");
printf($inF "%\% Example of how to divide up the plot window with multiple plots.\n");
printf($inF "%\%\n");
printf($inF "%\% clf\n");
printf($inF "%\% x=0:dx:tsi;x=x';\n");
printf($inF "%\% subplot(223);plot (x*1e4,FIinv,'-b')\n");
printf($inF "%\% xlabel('depth (µm)');ylabel('potential (V)');title('inversion');\n");
printf($inF "%\% subplot(221);plot(x*1e4,rinv,'-b');\n");
printf($inF "%\% xlabel('depth (µm)');ylabel('charge (C/cm3)');title('inversion');\n");
printf($inF "%\% subplot(222);plot(x(1:t-1)*1e4,E,'-b');\n");
printf($inF "%\% xlabel('depth (µm)');ylabel('electric field (V/cm)');title('inversion');\n");
printf($inF "%\% subplot(224);semilogy(x*1e4,pinv,'-b',x*1e4,ninv,'--r');\n");
printf($inF "%\% xlabel('depth (µm), -=holes, - - - =electrons');ylabel('carrier concentration (cm-3)');title('inversion');\n");
printf($inF "%\% text(0.35,0.48,'Hit RETURN for next graph','sc')\n");
printf($inF "%\% pause\n");
printf($inF "%\% clf;\n");
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


