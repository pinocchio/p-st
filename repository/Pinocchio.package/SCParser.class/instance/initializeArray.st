literal
initializeArray
	| array |
	array := PEGParser named: 'ARRAY'.
	
	array <= (('(' asPEG omit: true)
				
				& ((self numberConstant
					| self stringConstant
					<= self symbolInArray
					<= self symbolConstant
					<= self characterConstant
					<= array) times)
					
				<& (')' asPEG omit: true)).
	
	array semantics: [ :result |
		ASTArray new literals: result
	].
	
	 ^ array