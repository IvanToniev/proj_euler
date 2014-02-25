#!usr/bin/perl
use 5.014;
use strict;
use warnings;

my $sum_of_squares = 0;
my $square_of_sum = 0;

foreach my $num (1..100) {
  $sum_of_squares += $num**2;
  $square_of_sum += $num;
}

say $square_of_sum**2 - $sum_of_squares;