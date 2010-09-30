literal
initializeArray
	| array |
	array := PEGMultiParser named: 'ARRAY'.
	array <= ('(' asParser
				& (self numberConstant | self stringConstant
					<= self symbolInArray
					<= self symbolConstant
					<= self characterConstant
					<= array) times
				<& ')').
	^ array