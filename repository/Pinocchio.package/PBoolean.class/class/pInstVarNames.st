pharo-exporting
pInstVarNames
	<preventExport>
	self == PBoolean ifFalse: [ ^ super pInstVarNames ].
	^ {}