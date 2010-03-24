exporting
asPClass
	<preventExport>
	self = PObject ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self