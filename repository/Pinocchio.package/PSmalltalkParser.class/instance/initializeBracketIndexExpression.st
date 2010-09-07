initialization
initializeBracketIndexExpression
	| optionalAssignment isAssignment keywords arguments |
	^ super initializeBracketIndexExpression
		semantics: [ :parts | 
			optionalAssignment :=  parts second.
			isAssignment := optionalAssignment class == PEGSucceededOptionalResult.
			keywords := isAssignment ifFalse: [ Array with: #at: ] ifTrue: [ Array with: #at: with: #put:].
			arguments := isAssignment ifFalse: [ Array with: parts first] ifTrue: [ Array with: parts first with: optionalAssignment result].
			(ASTMessageExpression new)
				keywords: keywords;
				arguments: arguments ]