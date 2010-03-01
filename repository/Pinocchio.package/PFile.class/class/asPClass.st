accessing
asPClass 
	<preventExport>
	self = PClosure  ifTrue: [ ^ super asPClass ].
	^ PInternalClass newWith: self