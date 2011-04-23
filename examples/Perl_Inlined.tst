#!/usr/bin/perl -W -T

use strict;
#use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $placeholder = Text::Placeholder->new(
	my $counter = '::Perl_Inlined');
$placeholder->compile('Result: [= return("Hello World.") =]');

print ${$placeholder->execute()}, "<-\n";

exit(0);
