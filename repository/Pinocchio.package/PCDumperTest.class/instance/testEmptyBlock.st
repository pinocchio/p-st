running
testEmptyBlock
	| ast result |
	ast := self ast: '[]'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = ('Object ' , ast uid , 
		' = (Object)new_AST_Block_with(' , 
					'(Type_Array)empty_Type_Array, ' ,
					'(Type_Array)empty_Type_Array, 0, 0);')