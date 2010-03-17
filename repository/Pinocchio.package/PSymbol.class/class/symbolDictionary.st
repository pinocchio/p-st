pharo-exporting
symbolDictionary
	<preventExport>
	symbolDictionary ifNil: [symbolDictionary := PDictionary new].
	^ symbolDictionary. 