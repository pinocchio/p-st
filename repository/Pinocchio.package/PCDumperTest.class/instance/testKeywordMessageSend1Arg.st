running
testKeywordMessageSend1Arg
	| ast result |
	ast := self ast: 'true a: 1'.
	dumper visit: ast.
	dumper printString