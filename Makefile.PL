
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Parse Soar productions\r",
  "AUTHOR" => "Nathan Glenn <garfieldnate\@gmail.com>",
  "BUILD_REQUIRES" => {
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
  "CONFIGURE_REQUIRES" => {
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "Soar-Production-Parser",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Soar::Production::Parser",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Data::Dumper" => 0,
    "Parse::RecDescent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "1.122860",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



