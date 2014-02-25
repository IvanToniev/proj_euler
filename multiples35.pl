#!usr/bin/perl
use 5.014;
use strict;
use warnings;

my $sum = 0;

foreach my $num (1..999) {
    if( $num % 3 == 0 || $num % 5 == 0 ) {
        say $num;
        $sum += $num;
    }
}

say $sum;