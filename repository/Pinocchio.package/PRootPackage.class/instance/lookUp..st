accessing
lookUp: aSymbol
	^ self lookUpIn: ('-' split: aSymbol) at: 1
	
	