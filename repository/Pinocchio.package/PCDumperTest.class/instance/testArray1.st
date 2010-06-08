running
testArray1
	| array string |
	string := PString new string: 'abc'.
	array := {string} asPObject.
	dumper visit: array.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , string uid , ' = (Optr)new_Type_String(L"abc");' , String cr , 'Object ' , array uid
				, ' = (Optr)new_Collection_Array_with(1, (Optr)' , string uid , ');')