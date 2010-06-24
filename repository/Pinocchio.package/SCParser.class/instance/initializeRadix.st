literal
initializeRadix
	| number base sign |
	^ PEGParser
		named: 'RADIX-NUMBER'
		parsing:
			(self numberFormat & ('r' asPEG omit: true)) <& '-' asPEG optional <& (self decimalDigit | self uppercase) strongTimes
		semantics: [ :result | 
			base := result at: 1.
			sign := (result at: 2) resultIfFailed: [ '' ].
			number := (result at: 3) inject: (stream with: sign) into: [ :c :n | c << n ].
			(ASTNumber new)
				number: number contents;
				base: base ]