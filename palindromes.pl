#!usr/bin/perl
use 5.014;
use strict;
use warnings;
use List::Util 'max';

sub palindrome {
  my $num = shift;
  my $num_to_s = "$num";
  my $reverse = reverse $num_to_s;
  if ($num_to_s eq $reverse) {
    return 1;
  }
  return 0;
}

my @palindromes = ();

foreach my $num (100...998) {
  foreach my $other_num (101..999) {
    my $multiplied = $num * $other_num;
    if(palindrome($multiplied)) {
      push(@palindromes, $multiplied);
    }
  }
}

say max(@palindromes);