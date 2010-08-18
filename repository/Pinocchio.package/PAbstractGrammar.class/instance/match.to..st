parsing
match: string to: parser 
	^ parser match: (PEGStringScanner on: string separator: self separator)