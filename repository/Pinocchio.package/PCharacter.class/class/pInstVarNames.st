pharo-exporting
pInstVarNames
	<preventExport>
	^ self == PCharacter ifTrue:  [ {} ]
		ifFalse: [ super pInstVarNames ]