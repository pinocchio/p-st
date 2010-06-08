running
testAssign
	| result |
	visitor scope declare: (ASTVariable new name: 'a').
	parser := scparser subExpression.
	result := self ast: ' a:= 13.'.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result variable uid , ' = (Optr)new_Variable_named(L"a");' , String cr , 'Object '
				, result expression constant uid , ' = (Optr)new_Number_SmallInt(13);' , String cr , 'Object '
				, result expression uid , ' = (Optr)new_Constant((Optr)' , result expression constant uid , ');' , String cr
				, 'Object ' , result uid , ' = (Optr)new_Assign((Optr)' , result variable uid , ', (Optr)'
				, result expression uid , ');')