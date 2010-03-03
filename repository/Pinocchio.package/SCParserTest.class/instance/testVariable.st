tests
testVariable
	| parser string result |
	parser := scparser primaryVariable.
	string := PEGStringScanner on: 'a'.
	result := parser match: string.
	result should beKindOf: ASTVariable.
	result name should = #a.
	string := PEGStringScanner on: 'Pinocchio.Type.Object'.
	result := parser match: string.
	result should beKindOf: ASTPath.
	result path size should = 3.
	result path should = (OrderedCollection with: #Pinocchio with: #Type with: #Object).
	string atEnd should be true.