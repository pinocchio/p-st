iterating
pathDo: block separatedBy: separator
	parent isRoot ifFalse: [
		parent pathDo: block separatedBy: separator.
		separator value ].
	block value: self