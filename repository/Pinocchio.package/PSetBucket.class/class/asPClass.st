exporting
asPClass
	<preventExport>
	self = PSetBucket ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self