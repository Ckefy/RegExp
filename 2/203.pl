#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $len = <STDIN>;
my $s = <STDIN>;
$_ = $s;
s/o(go)+/\*\*\*/g;
print 
