running
testBlockStatement1
	| ast result |
	ast := self ast: '[1]'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed