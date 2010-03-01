exporting
asPClass
	<preventExport>
	self = PLayout ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self