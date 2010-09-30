basic-block
initializeScopedExpression
	^ PEGParser
		named: 'SCOPED-EXPRESSION'
		parsing: '(' asParser & self expression <& ')'