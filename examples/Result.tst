#!/usr/bin/perl -W -T

use strict;
use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;

my $placeholder = Text::Placeholder->new(
	my $sql_result = '::SQL::Result');
$sql_result->placeholder_re('^fld_(\w+)$');
$placeholder->compile('<td>[=fld_some_name=]</td>');

my $statement = "SELECT ". join(', ', @{$sql_result->fields}). " FROM some_table";
print "$statement\n";
# my $rows = $dbh->selectall_arrayref($statement, ...);
# foreach my $row (@$rows) {...
my $row = [7, 8, 9];
$sql_result->subject($row);

print ${$placeholder->execute()}, "<-\n";
#print STDERR Dumper($sql_result);

exit(0);
