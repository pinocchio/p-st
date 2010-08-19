basic-block
initializeBraceExpression
	^ PEGParser
		named: 'BRACE-EXPRESSION'
		parsing: '{' asPEG
					& self statements
					<& '}'