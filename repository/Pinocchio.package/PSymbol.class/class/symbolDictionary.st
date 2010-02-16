pharo-exporting
symbolDictionary
	<preventExport>
	symbolDictionary ifNil: [symbolDictionary := SmallDictionary new].
	^ symbolDictionary. 