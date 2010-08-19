literal
initializeNumberFormat
	^ PEGMultiParser
		named: 'NUMBER-FORMAT'
		parsing: ('-' asPEG consume & (self decimalDigit | self uppercase) strongPlus) | (self decimalDigit | self uppercase) strongPlus