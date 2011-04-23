#!/usr/bin/perl -W -T

use strict;
#use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $placeholder = Text::Placeholder->new(
	my $counter = '::Counter');
$placeholder->compile('Counter: [=counter=]');

print ${$placeholder->execute()}, "<-\n";
print ${$placeholder->execute()}, "<-\n";
$counter->reset;
print ${$placeholder->execute()}, "<-\n";

exit(0);
