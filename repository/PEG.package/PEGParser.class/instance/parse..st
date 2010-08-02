parse
parse: input
	^ self match: (PEGStringScanner on: input separator: separator)