
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Data::Diver" => 0,
    "File::Find" => 0,
    "File::Spec::Functions" => 0,
    "File::Temp" => 0,
    "FindBin" => 0,
    "Module::Build" => "0.3601",
    "Test::Base" => 0,
    "Test::Base::Filter" => 0,
    "Test::Deep" => 0,
    "Test::Exception" => 0,
    "Test::More" => "0.88",
    "Test::Warn" => 0,
    "utf8" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Parse Soar productions\r",
  "dist_author" => [
    "Nathan Glenn <garfieldnate\@gmail.com>"
  ],
  "dist_name" => "Soar-Production-Parser",
  "dist_version" => "1.122860",
  "license" => "perl",
  "module_name" => "Soar::Production::Parser",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Data::Dumper" => 0,
    "Parse::RecDescent" => 0,
    "perl" => "5.010",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
