literal
initializeCharacter
	^ (('[]{}()_^;$#:-|.' asPEGChoice) | PEGParser separators <= self decimalDigit <= self letter <= self specialCharacter)