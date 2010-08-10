pharo-exporting
pInstVarNames
	<preventExport>
	self = PSmallInt
		ifFalse: [ ^ super pInstVarNames ].
	^ OrderedCollection new