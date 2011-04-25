package Text::Placeholder::Generic;

use strict;
use warnings;
use URI;
use parent qw(
	Text::Placeholder::_
	Object::By::Array);

sub THIS() { 0 }

sub ATR_PLACEHOLDERS() { 0 }

sub _init {
	$_[THIS][ATR_PLACEHOLDERS] = {};
	return;
}

1;
