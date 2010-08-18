basic-block
initializeBraceExpression
	^ PEGParser
		named: 'BRACE-EXPRESSION'
		parsing: '{' asPEG omit
					& self statements
					<& '}' asPEG omit