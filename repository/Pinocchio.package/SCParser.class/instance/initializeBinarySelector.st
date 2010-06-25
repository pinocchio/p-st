selector
initializeBinarySelector
	^ PEGMultiParser
		named: 'BINARY-SELECTOR'
		parsing: self specialCharacter | '-' && self specialCharacter strongTimes | '|'
		semantics:
			[ :result | self createSymbol: result asString ]