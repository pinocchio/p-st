pharo-exporting
pInstVarNames
	<preventExport>
	^ self = PCharacter ifTrue:  [ OrderedCollection new ] ifFalse: [ super pInstVarNames ]