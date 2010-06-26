literal
initializeNumber
	^ PEGParser
		named: 'NUMBER'
		parsing: self numberFormat
		semantics: [ :result | 
			(ASTNumber new)
				number: result;
				base: '10' ]