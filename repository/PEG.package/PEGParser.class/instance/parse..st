parse
parse: input
	| memoizingString result stack |
	memoizingString := PEGStringScanner on: input separator: separator.
	stack := PEGStack new.
	self match: memoizingString to: stack fail: [ ^ false ].
	^ stack pop