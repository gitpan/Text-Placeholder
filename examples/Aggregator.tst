#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $placeholder = Text::Placeholder->new(
	my $aggregator = '::Aggregator');
$aggregator->add_group(
	my $file_name = '::OS::Unix::File::Name',
	my $file_properties = '::OS::Unix::File::Properties',
	);
$placeholder->compile('[=file_timestamp_modification=] / [=file_name_only=] / [=file_owner_name=] / [=file_mode_rwx=]');

$aggregator->subject('/tmp/test.dat');
print ${$placeholder->execute()}, "<-\n";

exit(0);
