pharo-exporting
pInstVarNames
	<preventExport>
	self = PString
		ifFalse: [ ^ super pInstVarNames ].
	^ OrderedCollection new