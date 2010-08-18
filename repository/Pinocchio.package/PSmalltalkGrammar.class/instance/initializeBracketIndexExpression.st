expression
initializeBracketIndexExpression
	^ PEGMultiParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: '[' asPEG omit
					& self expression
					<& ']' asPEG omit
					<& ( self assignmentOp & self expression ) optional