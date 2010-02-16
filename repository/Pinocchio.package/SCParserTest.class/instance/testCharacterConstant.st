tests
testCharacterConstant
	| parser string result |
	parser := scparser characterConstant.
	string := PEGStringScanner on: 'a'.
	(parser match: string) should be isNil.
	string position should = 0.
	string := PEGStringScanner on: '$_'.
	result := parser match: string.
	result class should = ASTCharacter.
	result char should = $_.
	string position should = 2