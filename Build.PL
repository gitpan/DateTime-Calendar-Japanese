use strict;
use Module::Build;

my $build = Module::Build->new(
    module_name => 'DateTime::Calendar::Japanese',
    dist_name => 'DateTime-Calendar-Japanese',
    license => 'perl',
    requires => {
        'DateTime'                          => 0,
        'DateTime::Calendar::Chinese'       => '0.02',
        'DateTime::Calendar::Japanese::Era' => 0,
        'DateTime::Event::Sunrise'          => 0,
        'Params::Validate'                  => 0,
    },
    recommends => {
        'perl' => '5.6.1',
    },
    sign => 1,
    create_makefile_pl => 'passthrough'
);
$build->create_build_script;
