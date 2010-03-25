accessing
lookUp: aSymbol
	<preventExport>
	^ self lookUpIn: ('-' split: aSymbol) at: 1