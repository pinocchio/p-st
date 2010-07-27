basic-block
initializeBraceExpression
	^ PEGMultiParser
		named: 'BRACE-EXPRESSION'
		parsing: ('{' asPEG omit) & self subExpression times <& self expression <& ('}' asPEG omit)
		semantics: [ :result | 
			ASTBraceExpression new
				expressions: result asArray ]