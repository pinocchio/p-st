running
testBoolean
	dumper visit: (visitor visit: PBoolean true).
	dumper printString withBlanksTrimmed should = ''.
	dumper visit: (visitor visit: PBoolean false).
	dumper printString withBlanksTrimmed should = ''