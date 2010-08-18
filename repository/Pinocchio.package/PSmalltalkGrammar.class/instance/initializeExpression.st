expression
initializeExpression
	" Prestoring required parsers to handle circular references. "
	self preStorePrimary.
	self preStoreMessageExpression.
	self preStoreCascadedMessageExpression.
	parsers at: #expression
		put: (PEGMultiParser
			named: 'EXPRESSION'
			parsing: self assignmentExpressions optional
						& (self cascadedMessageExpression
							| self messageExpression
							<= self primary)).	
	" After having built the expression parser, we inject the parsers into their stubs. "
	self injectPrimary.
	self injectMessageExpression.
	self injectCascadedMessageExpression.	
	^ parsers at: #expression