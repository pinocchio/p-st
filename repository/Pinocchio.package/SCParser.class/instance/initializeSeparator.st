separator
initializeSeparator
	" has to be strongPlus since plus would match separator in between -> infinite recursion. "

	^ ((PEGParser separators | self commentFormat) strongTimes omit: true) name: 'SEPARATOR'