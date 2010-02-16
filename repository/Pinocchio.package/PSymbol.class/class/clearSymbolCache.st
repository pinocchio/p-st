pharo-exporting
clearSymbolCache
	<preventExport>
	symbolDictionary := SmallDictionary new.
	self initializeSymbols.