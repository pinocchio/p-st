exporting
asPClass 
	<preventExport>
	self = PMessage ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self