iterating
pathDo: block separatedBy: separator
	package isRoot ifFalse: [
		package pathDo: block separatedBy: separator.
		separator value ].
	block value: self