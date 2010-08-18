initialization
initializeCharacterConstant
	^ super initializeCharacterConstant
		semantics: [ :char | ASTCharacter new char: char ]