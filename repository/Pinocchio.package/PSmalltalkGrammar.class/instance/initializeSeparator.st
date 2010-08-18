separator
initializeSeparator
	" has to be strongPlus since plus would match separator in between -> infinite recursion. "

	^ (super initializeSeparator | self commentFormat) strongTimes omit