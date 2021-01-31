#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

while (<>) {
    print if /.*(\b)[1-9]?[0-9]+(\b).*/
}

