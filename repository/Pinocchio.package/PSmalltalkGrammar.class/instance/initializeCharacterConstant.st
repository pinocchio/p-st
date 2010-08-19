literal
initializeCharacterConstant
	^ PEGParser
		named: 'CHARACTER-CONSTANT'
		parsing: '$' asPEG && self character