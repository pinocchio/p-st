parse
parse: input
	| result string |
	string := PEGStringScanner on: input separator: separator.
	result := self match: string.
	string should be atEnd.
	^ result