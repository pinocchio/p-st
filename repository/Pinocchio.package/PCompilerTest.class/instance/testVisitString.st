running
testVisitString
	| string result constant |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	result class should = PConstant.
	constant := result constant asPObject.
	constant class should = PString.
	constant string should = 'My funky test string.'.