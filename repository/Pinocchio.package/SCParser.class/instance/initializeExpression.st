expression
initializeExpression
	| variables expression |
	" Prestoring required parsers to handle circular references. "
	self preStorePrimary.
	self preStoreMessageExpression.
	self preStoreCascadedMessageExpression.
	
	parsers at: #expression put: (
		
	PEGParser
		named: 'EXPRESSION'
		
		parsing: self assignmentExpressions
					& (self cascadedMessageExpression
						| self messageExpression
						<= self primary)
		
		semantics: [ :result |
			variables := result first.
			expression := result at: 2.
			variables reverse do: [ :variable |
				expression := ASTAssignmentExpression new
								expression: expression;
								variable: variable
			].
			expression
		]
	).
	" After having built the expression parser, we inject the parsers into their stubs. "
	self injectPrimary.
	self injectMessageExpression.
	self injectCascadedMessageExpression.
	
	^ parsers at: #expression