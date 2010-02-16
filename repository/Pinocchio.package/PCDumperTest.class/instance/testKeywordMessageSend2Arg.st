running
testKeywordMessageSend2Arg
	| ast result |
	ast := self ast: 'true at: 1 put: 2'.
	dumper visit: ast.
	dumper printString