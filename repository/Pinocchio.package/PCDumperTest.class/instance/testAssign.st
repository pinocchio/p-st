running
testAssign
	| result |
	visitor scope declare: (ASTVariable new name: 'a').
	parser := scparser subExpression.
	result := self ast: ' a:= 13.'.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result variable uid , ' = (Object)new_AST_Variable_named(L"a");' , String cr , 'Object ' , result expression constant uid , ' = (Object)new_Type_SmallInt(13);' , String cr , 'Object ' , result expression uid , ' = (Object)new_AST_Constant((Object)' , result expression constant uid , ');' , String cr , 'Object ' , result uid , ' = (Object)new_AST_Assign((Object)' , result variable uid , ', (Object)' , result expression uid , ');')