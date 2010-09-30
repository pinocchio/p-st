selector
initializeBinarySelector
	^ PEGMultiParser
		named: 'BINARY-SELECTOR'
		parsing: (self specialCharacter | '-' asParser consume)
					&& self specialCharacter strongTimes
					| ('|' asParser consume)