running
testArray0
	| array |
	array := {   } asPArray.
	dumper visit: array.
	dumper printString withBlanksTrimmed should = ''