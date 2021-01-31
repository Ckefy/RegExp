#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

while (<>) {
    print if /(^(?!\s).*(?<!\s)$)|(^\S*$)/
}
