expression
initializeBracketIndexExpression
	^ PEGMultiParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: '[' asParser
					& self expression
					<& ']'
					<& ( self assignmentOp & self expression ) optional