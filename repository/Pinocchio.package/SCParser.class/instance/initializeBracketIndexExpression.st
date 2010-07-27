expression
initializeBracketIndexExpression
	| keywords arguments isAssignment args optionalAssignment |
	^ PEGMultiParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: ('[' asPEG omit) & self expression & (']' asPEG omit) & (( self assignmentOp & self expression ) optional)
		semantics: [ :parts | 
			optionalAssignment :=  parts second.
			isAssignment := optionalAssignment class == PEGSucceededOptionalResult.
			keywords := isAssignment ifFalse: [ Array with: #at: ] ifTrue: [ Array with: #at: with: #put:].
			arguments :=  isAssignment ifFalse: [ Array with: parts first] ifTrue: [ Array with: parts first with: optionalAssignment result].
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]