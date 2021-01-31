#!/usr/bin/perl
  
use 5.010;
use strict;
use warnings;
  
while (<>){
     s/([0-9]+)0(\W+)/$1$2/g;
     print
}