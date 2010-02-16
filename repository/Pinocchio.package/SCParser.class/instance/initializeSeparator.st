separator
initializeSeparator
	" has to be strongPlus since plus would match separator in between -> infinite recursion. "
	^ PEGParser
		named: 'COMMENT'
		parsing: (((PEGParser separators | self commentFormat) strongTimes) omit: true)