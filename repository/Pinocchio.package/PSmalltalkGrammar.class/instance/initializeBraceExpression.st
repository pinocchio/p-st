basic-block
initializeBraceExpression
	^ PEGParser
		named: 'BRACE-EXPRESSION'
		parsing: '{' asParser
					& self statements
					<& '}'