basic-block
initializeReturn
	^ PEGParser
		named: 'RETURN'
		parsing: ('^' asPEG omit: true) & self finalExpression
		semantics: [ :expression |
			ASTReturnExpression new expression: expression
		]