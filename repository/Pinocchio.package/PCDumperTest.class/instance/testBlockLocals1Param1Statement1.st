running
testBlockLocals1Param1Statement1
	| ast result |
	ast := self ast: '[:a||b| 1]'.
	dumper visit: ast.
	dumper printString