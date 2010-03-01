exporting
asPClass
	<preventExport>
	self = PIntLayout ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self