convenience
createPInfo
	| info |
	info := PInfo new.
	info sourceFile: currentMethod sourceObject asPString.
	info name: currentMethod message asPString.
	info line: -1 asPSmallInt.
	info column: -1 asPSmallInt.
	^ info