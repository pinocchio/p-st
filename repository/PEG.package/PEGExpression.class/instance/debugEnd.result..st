debugging
debugEnd: input result: result
	PEGExpression debug
		ifTrue: [
			PEGExpression decreaseIndent.
			PEGExpression indent.
			result
				ifNil: [ ('failed ', self printString) stdout; cr ]
				ifNotNil: [ ('success ', self printString) stdout; cr ]]