exporting
asPClass
	<preventExport>
	self = PArrayLayout ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self