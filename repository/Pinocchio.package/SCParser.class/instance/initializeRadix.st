literal
initializeRadix
	| number base |
	^ PEGMultiParser
		named: 'RADIX-NUMBER'
		parsing:
			(self numberFormat & ('r' asPEG omit)) <& '-' asPEG optional <& (self decimalDigit | self uppercase) strongTimes
		semantics: [ :result | 
			base := result removeFirst.
			result first
				ifMatched: [ :sign | result at: 1 put: sign ]
				ifFailed: [ result removeFirst ].
			(ASTNumber new)
				number: result asString;
				base: base ]