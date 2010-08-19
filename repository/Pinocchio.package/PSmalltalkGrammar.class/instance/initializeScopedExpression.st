basic-block
initializeScopedExpression
	^ PEGParser
		named: 'SCOPED-EXPRESSION'
		parsing: '(' asPEG & self expression <& ')'