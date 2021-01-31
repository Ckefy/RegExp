#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

while (<>){
     s/(\W+)(\w)(\w)/$1$3$2/g;
     s/(^)(\w)(\w)/$1$3$2/g;
     print
}
