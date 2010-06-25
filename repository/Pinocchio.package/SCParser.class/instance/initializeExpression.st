expression
initializeExpression
	| vars expression |
	" Prestoring required parsers to handle circular references. "
	self preStorePrimary.
	self preStoreMessageExpression.
	self preStoreCascadedMessageExpression.
	parsers
		at: #expression
		put: (PEGMultiParser
				named: 'EXPRESSION'
				parsing: self assignmentExpressions optional & ((self cascadedMessageExpression | self messageExpression) <= self primary)
				semantics: [ :result | 
					vars := result first.
					expression := result at: 2.
					vars ifMatched: [ :variables |
						variables reverse do: [ :variable | 
							expression := (ASTAssignmentExpression new)
								expression: expression;
								variable: variable ] ].
					expression ]).	
	" After having built the expression parser, we inject the parsers into their stubs. "
	self injectPrimary.
	self injectMessageExpression.
	self injectCascadedMessageExpression.	
	^ parsers at: #expression