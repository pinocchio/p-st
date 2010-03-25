pharo-exporting
clearSymbolCache
	<preventExport>
	symbolDictionary := PDictionary new.
	self initializeSymbols