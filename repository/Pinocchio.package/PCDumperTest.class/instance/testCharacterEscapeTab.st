running
testCharacterEscapeTab
	| character result |
	character := ASTCharacter new char: Character tab.
	result := visitor visit: character.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_Character(L''\t'');' , String cr , 'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')