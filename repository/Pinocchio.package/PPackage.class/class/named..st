instance creation
named: aSymbol
	aSymbol should beKindOf: PSymbol.
	^ self new packageName: aSymbol