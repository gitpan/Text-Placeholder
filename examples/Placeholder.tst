#!/usr/bin/perl -W -T

use strict;
#use Data::Dumper;
#use Test::Simple tests => 0;

use Text::Placeholder;
#my $parser = Text::Placeholder::build_parser('^(.*?)<\%\s+([^=\]]+)\s\%>');
my $placeholder = Text::Placeholder->new(
#	$parser,
	my $counter = '::Counter',
	my $listing = '::OS::Unix::File::Name');

#$placeholder->parser('^(.*?)<\%\s+([^=\]]+)\s\%>');
#$placeholder->compile('#<% counter %>. <');
$placeholder->compile('#[=counter=]. [=file_name_base=]');

my @file_names = qw(/etc/hosts /etc/resolv.conf /etc/passwd);
foreach my $file_name (@file_names) {
	$listing->subject($file_name);
	print ${$placeholder->execute()}, "\n";
}

#$counter->reset;
#print ${$placeholder->execute()}, "<-\n";

exit(0);
