#!usr/bin/perl
use 5.014;
use strict;
use warnings;
use Math::Complex;
use List::Util 'max';
use Math::Factor::XS ':all';

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


my @prime_factors = ();
my $checked_number = 600851475143;
for(my $num = 0; $num < sqrt($checked_number); $num++) {
  if(prime($num) == 1 && $checked_number % $num ==0) {
    push(@prime_factors, $num);
  }
}

say max(@prime_factors);

#with the algorith from the Math module
# my @factors = factors(600851475143);
# my @prime_factors = ();
# foreach my $factor (@factors) {
#   say $factor;
#   say prime($factor);
#   if (prime($factor)) {
#     push(@prime_factors, $factor);
#   }
# }
# say max(@prime_factors);

