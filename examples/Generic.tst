#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $placeholder = Text::Placeholder->new(
	my $generic = '::Generic');
$generic->add_placeholder('some_value', sub { return((time()%86400)) });

$placeholder->compile('Some value: [=some_value=]');
print ${$placeholder->execute()}, "<-\n";

exit(0);
