literal
initializeRadix
	^ PEGMultiParser
		named: 'RADIX-NUMBER'
		parsing:
			(self numberFormat & ('r' asPEG omit)) <& (('-' asPEG & (self decimalDigit | self uppercase) strongTimes) | (self decimalDigit | self uppercase) strongTimes)
		semantics: [ :result | 
			(ASTNumber new)
				base: result removeFirst;
				number: result asString ]