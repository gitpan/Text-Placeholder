package Text::Placeholder::_;

use strict;
use warnings;

sub THIS() { 0 }
sub ATR_SYMBOLS() { 0 }

sub P_SYMBOL() { 1 }
sub lookup {
	return(exists($_[THIS][ATR_SYMBOLS]{$_[P_SYMBOL]})
		? [$_[THIS][ATR_SYMBOLS]{$_[P_SYMBOL]}, $_[THIS]]
		: undef);
}

sub P_FORMATTER() { 2 }
sub add_symbol {
	$_[THIS][ATR_SYMBOLS]{$_[P_SYMBOL]} = $_[P_FORMATTER];
}

1;
