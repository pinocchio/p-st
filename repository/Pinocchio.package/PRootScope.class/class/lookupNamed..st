accessing
lookupNamed: aSymbol
	^ self lookupNamed: aSymbol ifAbsent: [ aSymbol variableNotFound ]