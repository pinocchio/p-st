running
testDumpUnaryMessageSend
	| ast result |
	ast := self ast: 'true not'.
	dumper visit: ast.
	dumper printString 