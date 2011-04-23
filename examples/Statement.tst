#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
my $placeholder = Text::Placeholder->new(
	my $sql_statement = '::SQL::Statement');
$sql_statement->placeholder_re('some_name');
$placeholder->compile('DELETE FROM table WHERE field = [=some_name=]');

print ${$placeholder->execute()}, "<-\n";
print join(', ', @{$sql_statement->fields});

exit(0);
