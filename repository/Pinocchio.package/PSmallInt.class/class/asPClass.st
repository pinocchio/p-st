pharo-exporting
asPClass
	<preventExport>
	self = PSmallInt
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self