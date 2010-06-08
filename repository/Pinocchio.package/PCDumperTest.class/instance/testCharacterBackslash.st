running
testCharacterBackslash
	| character result |
	character := ASTCharacter new char: $\.
	result := visitor visit: character.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_Character(L''\\'');' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')