variable
initializeIdentifierBody
	^ self letter && (self letter | self decimalDigit <= '!?' asPEGChoice) strongTimes