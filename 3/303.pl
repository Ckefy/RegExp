#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my %lst;
while (<>) {
    my $cur = $_;
    #if there`re more than one link, we make while
    while ($cur =~ m/(\s*)<(\s*)a(.*)href(\s*)=(\s*)"(.*?)"(.*)>(\s*)/i){
        #<protocol>:[//[<login>[:<pass>]@]<host>[:<port>]][/<URL-path>][?<params>][#<fragment>] - standart
        #ignore after port, we don`t need it
        my $lnk = $6; 
        $lnk =~ /(?<protocol>[^:\/?#]+:\/\/)?(?<loginpass>\S*\@)?(?<host>[^\/\?\s#:]+)(:(?<port>[0-9]+))?/i;
        if ((defined $+{host}) && (!((lc $+{host}) =~ m/^\s*$/i))){
            if (((defined $+{port}) && (!((lc $+{port}) =~ m/^\s*$/i))) || ((defined $+{protocol}) && (!((lc $+{protocol}) =~ m/^\s*$/i)))){
                $lst{(lc $+{host})} = "true";
            }
        } 
        $cur =~ s/(\s*)<(\s*)a(.*)href(\s*)=(\s*)"(.*?)"(.*)>(\s*)//i;
    }
}
#fixed - after a maybe some keys and before > maybe some attributes of html-tag
print join "\n", sort (keys %lst);