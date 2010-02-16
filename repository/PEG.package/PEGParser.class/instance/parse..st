parse
parse: input
	| memoizingString result |
	memoizingString := PEGStringScanner on: input separator: separator.
	result := self match: memoizingString.
	
	^ result