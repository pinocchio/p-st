expression
initializeBracketIndexExpression
	^ PEGMultiParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: '[' asPEG
					& self expression
					<& ']'
					<& ( self assignmentOp & self expression ) optional