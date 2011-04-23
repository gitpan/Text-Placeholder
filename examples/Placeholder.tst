#!/usr/bin/perl -W -T

use strict;
#use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $parser = Text::Placeholder::build_parser('^(.*?)<\%\s+([^=\]]+)\s\%>');
my $placeholder = Text::Placeholder->new(
	$parser,
	my $counter = '::Counter');
#$placeholder->parser('^(.*?)<\%\s+([^=\]]+)\s\%>');
$placeholder->compile('Counter: <% counter %>');

print ${$placeholder->execute()}, "<-\n";
print ${$placeholder->execute()}, "<-\n";
$counter->reset;
print ${$placeholder->execute()}, "<-\n";

exit(0);
