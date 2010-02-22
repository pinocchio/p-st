exporting
asPClass 
	<preventExport>
	self = PClosure  ifTrue: [ ^ super asPClass ].
	^ PInternalClass newWith: self