literal
initializeCharacterConstant
	^ PEGParser
		named: 'CHARACTER-CONSTANT'
		parsing: '$' asPEG omit && self character