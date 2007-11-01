use strict;
use inc::Module::Install;

name('DateTime-Calendar-Japanese');
all_from('lib/DateTime/Calendar/Japanese.pm');
requires('DateTime::Calendar::Chinese');
requires('DateTime::Event::Chinese');
requires('DateTime::Calendar::Japanese::Era');

auto_install;
WriteAll;