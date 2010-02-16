literal
initializeCharacterConstant
	^ PEGParser
		named: 'CHARACTER-CONSTANT'
		parsing: (('$' asPEG omit: true) && (self character))
		semantics: [ :char |
			ASTCharacter new char: char first " get char from string containing only the char "
		]