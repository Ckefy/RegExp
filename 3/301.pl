#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $flag = 0;
my $remember = 0;
while (<>) {
     if ($flag == 0) {
	if (!(m/^ *$/)){
	    $flag = 1;
	    s/(^ *)(\S+)/$2/;
            s/(\S+)( *$)/$1/;
            s/( {2,})/ /g;
	    print
	}
     } else {
	if (m/^ *$/){
             $remember = 1;
	} else {
            if ($remember == 1) {
                  print "\n";
                  $remember = 0;            }
            s/(^ *)(\S+)/$2/;
            s/(\S+)( *$)/$1/;
            s/( {2,})/ /g;
            print
	}
     }
}
