exporting
asPClass
	<preventExport>
	self = PDictionary ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self