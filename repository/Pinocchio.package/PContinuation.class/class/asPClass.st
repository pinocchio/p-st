exporting
asPClass
	<preventExport>
	self = PContinuation ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self