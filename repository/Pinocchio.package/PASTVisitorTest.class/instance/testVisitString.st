running
testVisitString
	| string result |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	result class should = PConstant.
	result constant class should = PString.
	result constant string should = 'My funky test string.'.