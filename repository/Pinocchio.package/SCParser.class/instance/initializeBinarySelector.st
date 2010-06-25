selector
initializeBinarySelector
	^ PEGMultiParser
		named: 'BINARY-SELECTOR'
		parsing: self specialCharacter | '-' && self specialCharacter strongTimes | '|'
		semantics:
			[ :result | 
			result isString
				ifTrue: [ self createSymbol: result ]
				ifFalse: [ self createSymbol: (String newFrom: result) ] ]