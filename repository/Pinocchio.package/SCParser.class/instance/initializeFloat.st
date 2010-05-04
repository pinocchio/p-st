literal
initializeFloat
	| sign number |
	^ PEGParser
		named: 'FLOAT'
		parsing: self floatFormat
		semantics: [ :result | 
			(ASTFloat new)
				number: result.
		].