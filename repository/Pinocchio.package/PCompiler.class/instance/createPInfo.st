convenience
createPInfo
	| info |
	info := PInfo new.
	info sourceFile: currentMethod sourceObject asPObject.
	info name: currentMethod message asString asPObject.
	info line: -1 asPObject.
	info column: -1 asPObject.
	^ info