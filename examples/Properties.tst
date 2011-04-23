#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $placeholder = Text::Placeholder->new(
	my $os_unix_file = '::OS::Unix::File::Properties');
$placeholder->compile('[=file_timestamp_modification=] / [=file_owner_name=] / [=file_mode_rwx=]');

$os_unix_file->subject('/etc/hosts');
print ${$placeholder->execute()}, "<-\n";

exit(0);
