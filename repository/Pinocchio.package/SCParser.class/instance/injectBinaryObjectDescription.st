expression
injectBinaryObjectDescription
	^ self binaryObjectDescription
		<= (self binaryExpression | self unaryObjectDescription)