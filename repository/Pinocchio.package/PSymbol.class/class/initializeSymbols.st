pharo-exporting
initializeSymbols
	<preventExport>
	self symbolDefintion do: [ :pair|
		self symbolDictionary at: (pair first) 
			ifAbsentPut: [PInternalSymbol new 
								symbol: (pair first);
								uid: (pair at: 2)] 
	]