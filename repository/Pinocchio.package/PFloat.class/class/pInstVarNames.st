exporting
pInstVarNames
	<preventExport>
	self = PFloat
		ifFalse: [ ^ super pInstVarNames ].
	^ OrderedCollection new