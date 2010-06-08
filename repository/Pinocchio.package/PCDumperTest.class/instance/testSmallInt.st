running
testSmallInt
	| number result |
	number := (ASTNumber new)
		base: '10';
		number: '-43'.
	result := visitor visit: number.
	dumper visit: result.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Number_SmallInt(-43);' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')