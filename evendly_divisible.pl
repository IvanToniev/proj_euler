#!usr/bin/perl
use 5.014;
use strict;
use warnings;

my $num = 1;

while(1) {
  if(
     $num % 11 == 0 &&
     $num % 12 == 0 &&
     $num % 13 == 0 &&
     $num % 14 == 0 &&
     $num % 15 == 0 &&
     $num % 16 == 0 &&
     $num % 17 == 0 &&
     $num % 18 == 0 &&
     $num % 19 == 0 &&
     $num % 20 == 0) {
    say $num;
    last;
  }
  $num++;
}