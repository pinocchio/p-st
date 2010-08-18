literal
initializeNumberFormat
	^ PEGMultiParser
		named: 'NUMBER-FORMAT'
		parsing: ('-' asPEG & (self decimalDigit | self uppercase) strongPlus) | (self decimalDigit | self uppercase) strongPlus