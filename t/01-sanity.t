#!perl
use Test::More tests => 25;
BEGIN
{
    use_ok("DateTime::Calendar::Japanese", qw(HEISEI));
}

my $cc;
# 1 Jan 2004 is cycle (78) year 20 (Gui-Wei [Sheep]) month 12, day 10

my $dt = DateTime->new(year => 2004, month => 1, day => 1, time_zone => 'UTC');
$cc    = DateTime::Calendar::Japanese->from_object(object => $dt);
check_cc($cc);
$cc    = DateTime::Calendar::Japanese->new(
    cycle      => 78,
    cycle_year => 20,
    month      => 12,
    day        => 10
);
check_cc($cc);
$cc    = DateTime::Calendar::Japanese->new(
    era_name   => HEISEI,
    era_year   => 15,
    month      => 12,
    day        => 10,
    time_zone  => 'UTC'
);
check_cc($cc);


sub check_cc
{
    my $cc = shift;

    isa_ok($cc, "DateTime::Calendar::Japanese");
    can_ok($cc, "cycle", "cycle_year", "month", "leap_month", "day",
        "utc_rd_values");
    
    is($cc->cycle, 78);
    is($cc->cycle_year, 20);
    is($cc->month, 12);
    is($cc->day, 10);
    is($cc->day_of_week, 4);
    
    my @vals = $cc->utc_rd_values();
    is($vals[0], 731581);
}
