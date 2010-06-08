exporting
pTypeName
	<preventExport>
	self == PLayout ifTrue: [ ^ super pinocchioName ].
	^ self pinocchioName.