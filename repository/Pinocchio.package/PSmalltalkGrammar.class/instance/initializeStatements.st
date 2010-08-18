basic-block
initializeStatements
	^ PEGMultiParser
		named: 'STATEMENTS'
		parsing: self subExpression times & (self return | self expression) optional