pharo-exporting
named: aSymbol
	<preventExport>
	^ self symbolDictionary at: aSymbol 
			ifAbsentPut: [self new symbol: aSymbol] 