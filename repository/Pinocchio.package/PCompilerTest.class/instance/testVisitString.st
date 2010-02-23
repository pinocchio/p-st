running
testVisitString
	| string result constant |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	result should beKindOf: PConstant.
	constant := result constant asPObject.
	constant should beKindOf: PString.
	constant should = 'My funky test string.'.