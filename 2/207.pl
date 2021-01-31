#!/usr/bin/perl
 
use 5.010;
use strict;
use warnings;
 
while (<>){
     s/(\w)(\1)+/$ 1/g;
     print
}