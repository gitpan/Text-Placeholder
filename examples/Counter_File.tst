#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
use Text::Placeholder::Counter;
use Text::Placeholder::OS_Unix_File;

my $os_unix_file = Text::Placeholder::OS_Unix_File->new;
my $counter = Text::Placeholder::Counter->new;

my $placeholder = Text::Placeholder->new($os_unix_file, $counter);
$placeholder->compile('[=counter=] / [=file_timestamp_modification=] / [=file_name_only=] / [=file_owner_name=]');

$os_unix_file->subject('/tmp/test.dat');
print ${$placeholder->execute()}, "<-\n";
print ${$placeholder->execute()}, "<-\n";
$counter->reset;
print ${$placeholder->execute()}, "<-\n";

exit(0);
