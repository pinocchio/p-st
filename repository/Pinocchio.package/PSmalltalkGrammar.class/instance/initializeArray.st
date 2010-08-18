literal
initializeArray
	| array |
	array := PEGMultiParser named: 'ARRAY'.
	array <= ('(' asPEG omit
				& (self numberConstant | self stringConstant
					<= self symbolInArray
					<= self symbolConstant
					<= self characterConstant
					<= array) times
				<& ')' asPEG omit).
	^ array