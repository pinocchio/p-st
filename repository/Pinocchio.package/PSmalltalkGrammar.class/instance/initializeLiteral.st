literal
initializeLiteral
	^ self float | self numberConstant
		| self symbolConstant
		<= self characterConstant
		<= self stringConstant
		<= self arrayConstant