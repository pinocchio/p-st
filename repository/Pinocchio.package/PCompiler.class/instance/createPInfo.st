convenience
createPInfo
	| info |
	info := PInfo new.
	info sourceFile: currentMethod sourceObject.
	info line: 1.
	info column: 1.
	^ info