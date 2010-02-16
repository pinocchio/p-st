selector
initializeBinarySelector
	^ PEGParser
		named: 'BINARY-SELECTOR'

		parsing: ((	(self specialCharacter | '-') && (self specialCharacter) strongTimes)
					| '|' )
							
		semantics: [ :result |
			result isString
				ifTrue: [ self createSymbol: result ]
				ifFalse: [
					self createSymbol: 
						(result second 
							inject: result first 
							into: [ :c :e | c, e ]) ]
		]