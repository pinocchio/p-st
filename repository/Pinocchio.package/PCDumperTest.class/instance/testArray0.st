running
testArray0
	| array |
	array := {   } asPObject.
	dumper visit: array.
	dumper printString withBlanksTrimmed should = ''