running
testEmptyBlock
	| ast result |
	ast := self ast: '[]'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , ast uid , ' = (Optr)new_Block_with(' , '(Collection_Array)empty_Array, '
				, '(Collection_Array)empty_Collection_Array, 0, 0);')