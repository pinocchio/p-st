tests
testStringConstant
	| parser string result |
	parser := scparser stringConstant.
	string := PEGStringScanner on: '''abc'''.
	result := parser match: string.
	result class should = ASTString.
	result string should = 'abc'.
	string position should = 5.
	string := PEGStringScanner on: '''abc'''''.
	result := parser match: string.
	result class should = ASTString.
	result string should = 'abc'.
	string position should = 5.
	string := PEGStringScanner on: '''abc''''d'' '''.
	result := parser match: string.
	result class should = ASTString.
	result string should = 'abc''d'.
	string position should = 8