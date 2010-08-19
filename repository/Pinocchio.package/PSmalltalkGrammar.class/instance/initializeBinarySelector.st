selector
initializeBinarySelector
	^ PEGMultiParser
		named: 'BINARY-SELECTOR'
		parsing: (self specialCharacter | '-' asPEG consume)
					&& self specialCharacter strongTimes
					| ('|' asPEG consume)