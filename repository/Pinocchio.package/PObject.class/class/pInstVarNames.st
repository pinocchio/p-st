exporting
pInstVarNames
	<preventExport>
	self = PObject ifFalse: [ ^ super pInstVarNames ].
	^ OrderedCollection new.