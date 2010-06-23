expression
initializeBracketIndexExpression
	| keywords arguments isAssignment args optionalAssignment |
	^ PEGParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: self unaryObjectDescription & ('[' asPEG omit: true) & self expression & (']' asPEG omit: true) & (( self assignmentOp & self expression ) optional)
		semantics: [ :parts | 
			optionalAssignment :=  parts second.
			isAssignment := optionalAssignment class == PEGSucceededOptionalResult.
			args := parts first.
			keywords := isAssignment ifFalse: [ Array with: #at ] ifTrue: [ Array with: #at with: #put].
			arguments :=  isAssignment ifFalse: [ Array with: args second] ifTrue: [ Array with: args second with: optionalAssignment result].
			(ASTMessageExpression new)
				receiver: args first;
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]