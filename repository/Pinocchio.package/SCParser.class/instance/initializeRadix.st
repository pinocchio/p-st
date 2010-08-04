literal
initializeRadix
	^ PEGMultiParser
		named: 'RADIX-NUMBER'
		parsing: self numberFormat & ('r' asPEG omit) <& self numberFormat
		semantics: [ :result | 
			(ASTNumber new)
				base: result first;
				number: result second ]