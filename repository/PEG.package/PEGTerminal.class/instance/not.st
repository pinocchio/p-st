initialization
not
	(string size = 1)
		ifFalse: [ self error: 'Only allowed on terminals of size 1' ].
	^ PEGNotExpression new: self