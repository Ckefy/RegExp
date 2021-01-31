#!/usr/bin/perl
 
use 5.010;
use strict;
use warnings;
 
while (<>){
     s/(\W*)(\w+)(\W*)(\w+)/$1$4$3$2/;
     print
}