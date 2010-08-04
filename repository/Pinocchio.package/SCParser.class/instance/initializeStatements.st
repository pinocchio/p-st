basic-block
initializeStatements
	^ PEGMultiParser
		named: 'STATEMENTS'
		parsing: self subExpression times & (self return | self expression) optional
		semantics: [ :result | 
			(result last)
				ifMatched: [ :exp | result at: (result size) put: exp ]
				ifFailed: [ result removeLast ].
			result asOrderedCollection ]