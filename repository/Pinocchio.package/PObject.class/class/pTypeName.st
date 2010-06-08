exporting
pTypeName
	<preventExport>
	self == PObject ifTrue: [ ^ self pinocchioName. ].
	^ super pTypeName.