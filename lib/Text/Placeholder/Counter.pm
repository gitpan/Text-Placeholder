package Text::Placeholder::Counter;

use strict;
use warnings;
#use Carp qw();
#use Data::Dumper;
use parent qw(
	Text::Placeholder::_
	Object::By::Array);

sub THIS() { 0 }

sub ATR_SYMBOLS() { 0 }
sub ATR_COUNTER() { 1 }

my $SYMBOLS = {
	'counter' => sub { return($_[THIS][ATR_COUNTER]++)},
};

sub _init {
	my ($this) = @_;

	$this->[ATR_SYMBOLS] = $SYMBOLS;
	$this->[ATR_COUNTER] = 1;

	return;
}

sub reset {
	$_[THIS][ATR_COUNTER] = 1;
	return;
}

1;
