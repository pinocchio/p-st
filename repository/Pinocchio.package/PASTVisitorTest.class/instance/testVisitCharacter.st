running
testVisitCharacter
	| character result |
	character := ASTCharacter new char: 'c'.
	result := visitor visit: character.
	result class should = PConstant.
	result constant class should = PCharacter.
	result constant char should = $c.