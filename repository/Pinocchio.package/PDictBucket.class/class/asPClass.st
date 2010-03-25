exporting
asPClass
	<preventExport>
	self = PDictBucket
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self