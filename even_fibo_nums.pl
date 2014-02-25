#!usr/bin/perl
use 5.014;
use strict;
use warnings;

sub fibonacci {
  my $num = shift;

  if($num < 2) {
    return $num;
  }

  return fibonacci($num - 1) + fibonacci($num - 2);
}

my $sum_of_even_fibos = 0;
my $number = 2;

while(1) {
  my $fibonacci_number = fibonacci($number);
  say $fibonacci_number;

  if($fibonacci_number % 2 == 0) {
    $sum_of_even_fibos += $fibonacci_number;
  }
  if($fibonacci_number > 4000000) {
    last;
  }

  $number++;
}

print "This is my sum: " . $sum_of_even_fibos . "\n";