accessing
asPClass
	<preventExport>
	self = PASTNode ifTrue: [ ^ super asPClass ].
	^ PInternalClass newWith: self