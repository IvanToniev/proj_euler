#!usr/bin/perl
use 5.014;
use warnings;
use strict;

sub prime {
  my $number = abs(shift);

  if($number == 0 || $number == 1) {
    return 0;
  }

  if($number == 2 || $number == 3) {
    return 1;
  }

  foreach my $num (2..sqrt($number)) {
    if ($number % $num == 0 && $num < $number) {
      return 0;
    }
  }

  return 1;
}

my @primes = ();

foreach my $num (1..104750) {
  if (prime($num)) {
    push(@primes, $num);
  }
}
say prime(104743);
say scalar @primes;
# say $primes[10002];