parse
parse: input
	| memoizingString result stack |
	memoizingString := PEGStringScanner on: input separator: separator.
	^ self match: memoizingString