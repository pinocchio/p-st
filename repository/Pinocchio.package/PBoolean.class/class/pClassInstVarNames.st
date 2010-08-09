pharo-exporting
pClassInstVarNames
	<preventExport>
	self == PBoolean ifFalse: [ ^ super pInstVarNames ].
	^ {}