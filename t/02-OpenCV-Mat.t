use v6;

use OpenCV2::Mat;
use Test;

plan 1;

lives-ok { my $m = OpenCV2::Mat.new( 2, 2, 2 ) };
