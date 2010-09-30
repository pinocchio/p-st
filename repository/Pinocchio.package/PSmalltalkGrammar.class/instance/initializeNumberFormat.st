literal
initializeNumberFormat
	^ PEGMultiParser
		named: 'NUMBER-FORMAT'
		parsing: ('-' asParser consume & (self decimalDigit | self uppercase) strongPlus) | (self decimalDigit | self uppercase) strongPlus