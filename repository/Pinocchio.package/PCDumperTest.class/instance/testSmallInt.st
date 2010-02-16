running
testSmallInt
	| number result |
	number := ASTNumber new
		base: '10';
		number: '-43'.
	result := visitor visit: number.
	dumper visit: result.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_SmallInt(-43);' , String cr , 
		'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')