accessing
asPClass
	<preventExport>
	self = PNode ifTrue: [ ^ super asPClass ].
	^ PInternalClass newWith: self