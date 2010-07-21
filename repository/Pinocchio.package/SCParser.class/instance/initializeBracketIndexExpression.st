expression
initializeBracketIndexExpression
	| keywords arguments isAssignment args optionalAssignment |
	self halt.
	^ PEGMultiParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: ('[' asPEG omit: true) & self expression & (']' asPEG omit: true) & (( self assignmentOp & self expression ) optional)
		semantics: [ :parts | 
			optionalAssignment :=  parts second.
			isAssignment := optionalAssignment class == PEGSucceededOptionalResult.
			keywords := isAssignment ifFalse: [ Array with: #at: ] ifTrue: [ Array with: #at: with: #put:].
			arguments :=  isAssignment ifFalse: [ Array with: parts first] ifTrue: [ Array with: parts first with: optionalAssignment result].
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]