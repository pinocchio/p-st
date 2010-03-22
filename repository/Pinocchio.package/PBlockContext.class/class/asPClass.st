exporting
asPClass 
	<preventExport>
	self = PBlockContext ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self