#!perl
use Test::More qw(no_plan);
BEGIN
{
    use_ok("DateTime::Calendar::Japanese");
}


my $dt = DateTime->new(year => 2004, month => 1, day => 1, hour => 12, time_zone => 'Asia/Tokyo');
my $jc = DateTime::Calendar::Japanese->from_object(object => $dt);

is($jc->hour, 4);
is($jc->canonical_hour, 9);
is($jc->hour_quarter, 1);
