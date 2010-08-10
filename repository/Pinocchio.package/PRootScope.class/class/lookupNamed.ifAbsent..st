accessing
lookupNamed: aSymbol ifAbsent: aBlock
	^ decls at: aSymbol ifAbsent: aBlock