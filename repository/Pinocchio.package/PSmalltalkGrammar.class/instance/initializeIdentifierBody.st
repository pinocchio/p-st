variable
initializeIdentifierBody
	^ self letter &&
		(self lowercase | self uppercase
		<= self decimalDigit
		<= '!?' asPEGChoice) strongTimes