#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;

my $placeholder = Text::Placeholder->new(
	my $uri = '::URI');
$placeholder->compile('Host: [=uri_host=]');

$uri->subject('http://www.perl.org/');
#print STDERR Dumper($placeholder);
print ${$placeholder->execute()}, "<-\n";

exit(0);
