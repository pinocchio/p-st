running
testArray1
	| array string |
	string := PString new string: 'abc'.
	array := {  string  } asPArray.
	dumper visit: array.
	dumper printString withBlanksTrimmed should = ('Object ' , string uid , ' = (Object)new_Type_String(L"abc");' , String cr , 'Object ' , array uid , ' = (Object)new_Type_Array_with(1, (Object)' , string uid , ');')