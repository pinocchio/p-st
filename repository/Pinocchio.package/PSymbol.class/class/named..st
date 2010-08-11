pharo-exporting
named: aSymbol
	<preventExport>
	^ symboltable at: aSymbol ifAbsentPut: [ self new symbol: aSymbol ]